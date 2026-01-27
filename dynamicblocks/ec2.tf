resource "aws_instance" "this" {
    ami = var.ami_id 
    vpc_security_group_ids = ["aws_security_group_id.sg_id.id"]

    instance_type = var.instance_type
    tags = {
        Name = "kavya"
    }
}

resource "aws_security_group" "sg_id" {
    name = "sg_kavya"

    dynamic "ingress"   {
    for_each = var.ingress_ports

    content {
        from_port = ingress.value["from_port"] 
        to_port =  ingress.value["to_port"]
        protocol = ingress.value["protocol"]
        cidr_blocks = ingress.value["cidr_blocks"]
    }
    }

egress {
    from_port = 0
    to_port =  0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name= "sgtags"
}
}
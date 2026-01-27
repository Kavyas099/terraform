resource "aws_instance" "kavya" {
    ami = var.ami_id
    instance_type =  var.instance_type
    vpc_security_groups_id = ["aws_security_group.sg.id"]

    tags = {
        Name = "terraform-demo"
    }
}

resource "aws_security_group" "sg" {
    name = "sgid"
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "sgtags"
    }
}
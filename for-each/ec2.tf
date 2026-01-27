resource "aws_instance" "kavya" {
    ami = var.ami_id
    for_each = var.instance_type
    vpc_security_group_ids = ["aws_security_group.sg_id.id"]
    instance_type = each.value

    tags = {
        Name = each.key
    }
}

resource "aws_security_group" "sg_id" {
    name = "sg_id"

    ingress {
        from_port = 22
        to_port =22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol= "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "sg_tags"
    }
}

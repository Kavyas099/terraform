resource "aws_instance" "dev_instance" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.sg_id.id]
    instance_type = var.environment == "prod" ? "t3.small" : "t2.small"

    tags = {
        Name = "instance_name"
        purpose = "instance_creation"
    }
}

resource "aws_security_group" "sg_id" {
    name = "sg_name"
    description = "this is sg id"

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
        Name = "sg_id_name"
    }
}
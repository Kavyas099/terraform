resource "aws_instance" "this" {
    ami = data.aws_ami.kavya.id
    vpc_security_group_ids = [aws_security_group.sg_grp.id]
    instance_type = "t2.micro"

    tags = {
        Name = "terraform"
        
    }
}

resource "aws_security_group" "sg_grp" {
    name = "sg_grpss"
    description = "this is sg_grp"


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
        Name = "sg_tags"
    }
}
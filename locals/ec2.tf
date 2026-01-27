resource "aws_instance"  "kavya"{
    ami = local.ami_id
    vpc_security_group_ids=["aws_security_group.sg_grps.id"]
    instance_type = local.instance_type

    tags = {
        Name = "terraform"
    }
}

resource "aws_security_group" "sg_grps" {
    name = "sg_grp"
    description  = "this is sg"

    ingress {
        from_port = 22
        to_port = 22
        protocol= "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }


    tags = {
        Name = "sg_tsgds"
    }
}
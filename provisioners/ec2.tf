resource "aws_instance" "this" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.sg_id.id]

instance_type = var.instance_type

tags = {
    Name = "kavya"
}

provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory"
}


connection {
    user = "ec2-user"
    password = "DevOps321"
    type = "ssh"
    host = self.public_ip
}
provisioner "remote-exec" {
    inline = [
        "sudo dnf install nginx -y",
        "sudo systemctl start nginx"
    ]
}

 

}

resource "aws_security_group" "sg_id" {
    name = "sg_id"

    ingress {
        from_port =  22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port =  80
        to_port = 80
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
        Name = "kavyatrags"
    }
}
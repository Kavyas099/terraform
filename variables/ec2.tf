resource "aws_instance" "this" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.this_sec.id]
    instance_type = var.instance_type
    tags = var.tags_ec2
}

resource "aws_security_group" "this_sec" {
name = "sec-group"
description = "sec grp pracutcoe"

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

}
egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = var.sg_tags
}
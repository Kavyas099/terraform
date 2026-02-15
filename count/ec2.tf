resource "aws_instance" "this" {
  
    count = length(var.instances)
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.sg_group.id]
    instance_type = var.instance_type
    # tags = {
    #     Name = var.instances[count.index]
    # } 

tags = merge (
    var.common_tags,
    {
        Name = var.instances[count.index]
    }
)
}

resource "aws_security_group" "sg_group" {
  name ="sg_group"
  description ="tgis s sg id"


  ingress {
    from_port= 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port= 80
    to_port = 80
    protocol = "HTP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags = {
    Name = "sg-tags"
}

}
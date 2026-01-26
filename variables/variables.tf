 variable "instance_type" {
#     default = "t2.micro"
 }

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "tags_ec2" {
    type = map
    default = {
        Name = "varification_demo"
        project = "expense"
        environmet ="dev"
    }
}

variable "sg_tags" {
    type = map 
    default = {
        Name ="sg_tags "
    }
}
variable "instance_type" {
    type = string

    default = "t2.micro"
}


variable "ami_id" {
    type = integer
    default = "ami-0220d79f3f480ecf5"
}

variable "environment" {
    default = "dev"
}
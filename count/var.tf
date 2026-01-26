variable "instance_type" {
    default = "t2.micro"
}

variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instances" {
    default = ["frontend", "backend", "database"]
}

variable "zone_id" {
    default = "Z023019421FR1FZQ5H6OQ"
}
variable "domain_name" {
    default=  "kavyadev.shop"
}

variable "common_tags" {
    default = {
        project = "expense"
        environment = "dev"
    }
}
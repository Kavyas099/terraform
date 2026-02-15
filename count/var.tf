variable "instance_type" {
    default = "t3.micro"
}

variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instances" {
    default = ["ansible", "mysql", "backend" ,"frontend"]
}

variable "zone_id" {
    default = "Z04757596NZDGVB9VM0A"
}
variable "domain_name" {
    default=  "koti.lat"
}

variable "common_tags" {
    default = {
        project = "expense"
        environment = "dev"
    }
}
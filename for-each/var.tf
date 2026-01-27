variable "ami_id" {
    default = ""
}


variable "instance_type" {
    default = {
        mysql = "t1.micro"
        frontend = "t2.micro"
        backend = "t3.micro"
    }
}


variable "zone_id" {
    default = "Z023019421FR1FZQ5H6OQ"
}
variable "domain_name" {
    default=  "kavyadev.shop"
}
variable "ingress_ports" {
    default = [
    
    {
        from_port=22
        to_port =22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        
        from_port=0
        to_port =0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    },

    {
        from_port=3306
        to_port =3306
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }


    ]
}


variable "instance_type" {
    default = "t2.micro"
}

variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}
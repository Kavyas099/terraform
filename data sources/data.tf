data "aws_ami" "kavya" {
 
    most_recent      = true
    owners           = ["973714476881"]
    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"]
        
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}


 data "aws_vpc" "default" {
    default = true
 }
data "aws_vpc" "vpc" {
    filter  {
        name   = "tag:Name"
    values = ["kavya-prod"]
  }
    
}

output "main_vpc_id" {
value = data.aws_vpc.vpc.id
}


output "ami_id" {
     value = data.aws_ami.kavya.id
}
 

 
output "vpc_id"  {
value = data.aws_ami.kavya.id
}

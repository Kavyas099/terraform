locals {
    ami_id = data.aws_ami.kavya.id
    instance_type = "t3.small"
}
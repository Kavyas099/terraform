output "ec2_info" {
 value = aws_instance.this   
}
output "instance_name_with_public_ip" {
  value = {
    for i in aws_instance.this :
    i.tags.Name => i.public_ip
  }
}

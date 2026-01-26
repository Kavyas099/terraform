 resource "aws_route53_record" "this" {
    count = 3
zone_id = var.zone_id
ttl = 1
name = "${var.instances[count.index]}.${var.domain_name}"
type = "A"
records = [aws_instance.this[count.index].private_ip]
allow_overwrite = true
}


resource "aws_route53_record" "frontend" {
    ttl= 1
    type = "A"
    zone_id = var.zone_id
    
    name = var.domain_name
    records = [aws_instance.this[2].public_ip]
}
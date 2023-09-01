resource "aws_eip" "lb" {
  domain = "vpc"
}

output "public_ip_http_address" {
  value = "http://${aws_eip.lb.public_ip}:8080"
}

output "all_attributes" {
  value = aws_eip.lb
}



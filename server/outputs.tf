output "private_ip" {
  value = aws_instance.web.*.private_ip
}

output "private_dns" {
  value = aws_instance.web.*.private_dns
}
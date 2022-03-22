output "public_ip" {
  value = aws_instance.web.*.public_ip
}

output "private_dns" {
  value = aws_instance.web.*.public_dns
}

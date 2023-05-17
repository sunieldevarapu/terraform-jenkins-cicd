
output "web_server_az1_public_ips" {
    value = aws_instance.web_server_az1.*.public_ip
}

output "web_server_az2_public_ips" {
    value = aws_instance.web_server_az2.*.public_ip
}

output "ec2_instance_dns" {
  value = aws_eip.openvpn_eip.public_dns
}

output "ec2_instance_ipv4" {
  value = aws_eip.openvpn_eip.public_ip
}

output "ec2_instance_ipv6" {
  value = [aws_instance.openvpn.ipv6_addresses]
}

output "connection_string" {
  value = "'ssh -i ${var.ssh_private_key_file} ${var.ec2_username}@${aws_eip.openvpn_eip.public_dns}'"
}


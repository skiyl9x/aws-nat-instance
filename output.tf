output "ec2_public_ips" {
  description = "The public IP address list of the web instances."
  value       = ["${aws_instance.server.*.public_ip}"]
}

output "ec2_public_dns" {
  description = "The public dns names list of the instances."
  value       = ["${aws_instance.server.*.public_dns}"]
}

output "ec2_private_dns" {
  description = "The private dns names list of the instances."
  value       = ["${aws_instance.server.*.private_dns}"]
}

output "ec2_private_ips" {
  description = "The private ip list of the instances."
  value       = ["${aws_instance.server.*.private_ip}"]
}

output "ids" {
  value       = aws_instance.server.*.id
}

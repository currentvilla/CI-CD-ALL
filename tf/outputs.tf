output "public_ips" {
  description = "Public IPv4 addresses of public EC2 instances"
  value       = aws_instance.ci-cd-all-ec2[*].public_ip
}

output "instance-id" {
    value = aws_instance.demo-ec2[*].id
}

output "instance-public-ip" {
    value = aws_instance.demo-ec2[*].public_ip
}

output "instance-private-ip" {
    value = aws_instance.demo-ec2[*].private_ip
}
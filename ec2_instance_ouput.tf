output "instance_id" {
  description = "value of ec2 instance id"
  value = aws_instance.my_instance.id
}

output "ec2_instance_private_ip" {
  description = "value of ec2 instance private ip"
  value = aws_instance.my_instance.private_ip
}

output "ec2_instance_public_ip" {
  description = "value of ec2 instance public ip"
  value = aws_eip.my_eip.public_ip
}
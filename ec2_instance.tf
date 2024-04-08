resource "aws_instance" "my_instance" {
  availability_zone = var.availability_zone
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id = aws_subnet.my_subnet.id
  private_ip = var.ec2_instance_private_ip
  key_name = var.private_key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  ebs_block_device {
    device_name = var.ec2_ebs_device_name
    volume_size = var.ec2_ebs_volume_size
    volume_type = var.ec2_ebs_volume_type
  }
}
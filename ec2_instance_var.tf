variable "availability_zone" {
  description = "value of availability zone"
  type = string
}
variable "ec2_ami" {
  description = "value of ec2 ami"
  type = string  
}
variable "ec2_instance_type" {
  description = "value of ec2 instance type"
  type = string
}

variable "ec2_instance_private_ip" {
  description = "value of ec2 instance private ip"
  type = string
}

variable "ec2_ebs_device_name" {
  description = "value of ec2 ebs device name"
  type = string
}

variable "ec2_ebs_volume_type" {
  description = "value of ec2 ebs volume type"
  type = string
}

variable "ec2_ebs_volume_size" {
  description = "value of ec2 ebs volume size"
  type = number
}
variable "pvc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "sub_net_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "eip_private_ip" {
  description = "The private IP address to associate with the Elastic IP address"
  type        = string
}

variable "availability_zone_subnet" {
  description = "The availability zone for the subnet"
  type        = string
}
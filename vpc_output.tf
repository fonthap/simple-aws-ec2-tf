output "aws_vpc_id" {
  value = aws_vpc.my_pvc.id  
  description = "value of the VPC ID"
}
output "aws_subnet_id" {
  value = aws_subnet.my_subnet.id
  description = "value of the Subnet ID"
}
output "aws_internet_gateway_id" {
  value = aws_internet_gateway.my_igw.id
  description = "value of the Internet Gateway ID"
}
output "aws_route_table_id" {
  value = aws_route_table.my_subnet_route.id
  description = "value of the Route Table ID"
}
output "aws_security_group_id" {
  value = aws_security_group.my_security_group.id
  description = "value of the Security Group ID"
}
output "aws_eip_id" {
  value = aws_eip.my_eip.id
  description = "value of the Elastic IP ID"
}
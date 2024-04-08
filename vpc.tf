resource "aws_vpc" "my_pvc" {
  cidr_block       = var.pvc_cidr_block
  instance_tenancy = "default"
}
resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_pvc.id
  availability_zone = var.availability_zone_subnet
  cidr_block = var.sub_net_cidr_block
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_pvc.id
}

resource "aws_route_table" "my_subnet_route" {
  vpc_id = aws_vpc.my_pvc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
}

resource "aws_route_table_association" "asscociation_my_subnet" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_subnet_route.id
}

resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_pvc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_eip" "my_eip" {
  domain = "vpc"
  associate_with_private_ip = var.eip_private_ip
  depends_on                = [aws_internet_gateway.my_igw]
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my_instance.id
  allocation_id = aws_eip.my_eip.id
}
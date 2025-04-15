# This file defines the output variables for the VPC module.
output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gw.id
}

output "nat_eip" {
  value = aws_eip.nat_eip.public_ip
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}
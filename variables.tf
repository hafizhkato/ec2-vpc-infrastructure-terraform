# This file defines the variables used in the Terraform configuration.
# It includes the VPC CIDR block and the availability zones to be used.

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Subnet CIDRs
variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

# Availability Zone
variable "az_a" {
  description = "Availability Zone for subnets"
  type        = string
  default     = "ap-southeast-1a"
}

# Your Public IP (replace with your own IP)
variable "my_ip" {
  description = "Your public IP for SSH access"
  type        = string
  default     = "Your-Public-Ip/32"
}

# EC2 AMI ID
variable "ami_id" {
  description = "AMI for EC2 instance"
  type        = string
  default     = "ami-0fa377108253bf620" 
}

# Instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Key pair name
variable "key_name" {
  description = "SSH key name"
  type        = string
}


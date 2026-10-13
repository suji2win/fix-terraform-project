variable "aws_region" {
  type        = string
  description = "AWS region to deploy into"
  default     = "ca-central-1"
}

variable "ami_id" {
  type        = string
  description = "Amazon Linux 2 AMI in Canada Central"
  default     = "ami-0a029a4289582a0e0"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "Existing EC2 key pair name"
  default     = "sujit-kp-canada"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "dev"
}

variable "vpc_id" {
  type        = string
  description = "Existing VPC ID"
  default     = "vpc-0014847d335c3e3d2"
}

variable "subnet_id" {
  type        = string
  description = "Public subnet in the selected VPC"
  default     = "subnet-0439535a9736889d2"
}

variable "ssh_cidr" {
  type        = string
  description = "Public IPv4 CIDR allowed to connect using SSH"
  default     = "74.14.40.43/32"
}
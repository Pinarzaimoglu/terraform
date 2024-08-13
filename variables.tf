variable "vpc_cidr_block" {}
variable "everywhere_cidr_block" {}
variable "public_subnet_cidr_block" {}
variable "availability_zone" {}
variable "public_key_path" {}
variable "private_key_path" {}
variable "ssh_username" {}
variable "instance_type" {}
variable "ami_name" {}
variable "region" {}
variable "env" {}
variable "prometheus_server_subnet_cidr1" {}
variable "aws_public_key_name" {}
variable "prometheus_access_name" {}
variable "name" {}
variable "vpc_cidr" {}

variable "aws_amis" {
  default = {
    us-east-2 = "ami-05803413c51f242b7"
  }
}
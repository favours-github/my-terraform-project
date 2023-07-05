variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "vpc cidr block"
    type = string
}

variable "public_subnet_az1_cidr" {
    default = "10.0.0.0/24"
    description = "public_subnet_az1 cidr block"
    type = string
}

variable "public_subnet_az2_cidr" {
    default = "10.0.1.0/24"
    description = "public_subnet_az2 cidr block"
    type = string
}

variable "private_app_subnet_az1_cidr" {
    default = "10.0.2.0/24"
    description = "private_app_subnet_az1 cidr block"
    type = string
}


variable "private_app_subnet_az2_cidr" {
    default = "10.0.3.0/24"
    description = "private_app_subnet_az2 cidr block"
    type = string
}


variable "private_data_subnet_az1_cidr" {
    default = "10.0.4.0/24"
    description = "private_data_subnet_az1 cidr block"
    type = string
}


variable "private_data_subnet_az2_cidr" {
    default = "10.0.5.0/24"
    description = "private_data_subnet_az2 cidr block"
    type = string
}

#security group variable file
variable "ssh_location" {
  default = "0.0.0.0/0"
  description = "ip address that can ssh into the EC2"
  type = string
}
 
# auto scaling group variables
variable "launch_template_name" {
    default  = "dev-launch-template"
    description = "name of the launch template"
    type = string
}


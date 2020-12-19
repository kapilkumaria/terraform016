variable "ec2_count" {
    default = "1"
}


variable "ami_id" {}


variable "instance_type" {
    default = "t2.micro"
}


variable "public1a_subnet" {}

variable "public1b_subnet" {}

variable "private1a_subnet" {}

variable "private1b_subnet" {}

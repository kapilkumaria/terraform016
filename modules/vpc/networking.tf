resource "aws_vpc" "terraformvpc" {
    cidr_block = var.vpc_cidr
    instance_tenancy = var.tenancy

    tags = {
       Name = "kapil_terravpc"
    }
}


resource "aws_subnet" "public1a" {
   vpc_id = var.vpc_id
   availability_zone = var.az_pub_1a
   cidr_block = var.pub-subnet_1a_cidr

   tags = {
     Name = "kapil_pub_1a"
   }
}
  

resource "aws_subnet" "public1b" {
   vpc_id = var.vpc_id
   availability_zone = var.az_pub_1b
   cidr_block = var.pub-subnet_1b_cidr

   tags = {
     Name = "kapil_pub_1b"
   }
}


resource "aws_subnet" "private1a" {
   vpc_id = var.vpc_id
   availability_zone = var.az_pri_1a
   cidr_block = var.pri-subnet_1a_cidr

   tags = {
     Name = "kapil_pri_1a"
   }
}


resource "aws_subnet" "private1b" {
   vpc_id = var.vpc_id
   availability_zone = var.az_pri_1b
   cidr_block = var.pri-subnet_1b_cidr

   tags = {
     Name = "kapil_pri_1b"
   }
}


output "vpc_id" {
   value = aws_vpc.terraformvpc.id
}


output "subnet_pub_1a_id" {
   value = aws_subnet.public1a.id
}

output "subnet_pub_1b_id" {
   value = aws_subnet.public1b.id
}

output "subnet_pri_1a_id" {
   value = aws_subnet.private1a.id
}

output "subnet_pri_1b_id" {
   value = aws_subnet.private1b.id
}




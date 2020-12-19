resource "aws_instance" "bastion" {
    count = var.ec2_count
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.public1a_subnet

    tags = {
      Name = "kapil_bastion"
    }
}
    

resource "aws_instance" "web1a" {
    count = var.ec2_count
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.public1a_subnet

    tags = {
      Name = "kapil_web_1a"
    }
}


resource "aws_instance" "web1b" {
    count = var.ec2_count
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.public1b_subnet

    tags = {
      Name = "kapil_web_1b"
    }
}

resource "aws_instance" "db1a" {
    count = var.ec2_count
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.private1a_subnet

    tags = {
      Name = "kapil_db_1a"
    }
}

resource "aws_instance" "db1b" {
    count = var.ec2_count
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.private1b_subnet

    tags = {
      Name = "kapil_db_1b"
    }
}














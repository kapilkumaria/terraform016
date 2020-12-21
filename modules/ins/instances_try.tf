provider "aws" {
    region = "ca-central-1"
}

module "vpc" {
    source = "../vpc"
}

resource "aws_instance" "bastion" {
    count = 1
    ami = ami-02e44367276fe7adc
    instance_type = t2.micro
    subnet_id = module.vpc.public1a_subnet
    tags = {
      Name = "kapil_bastion"
    }
}
    

resource "aws_instance" "web1a" {
    count = 1
    ami = ami-02e44367276fe7adc
    instance_type = t2.micro
    subnet_id = module.vpc.public1a_subnet

    tags = {
      Name = "kapil_web_1a"
    }
}


resource "aws_instance" "web1b" {
    count = 1
    ami = ami-02e44367276fe7adc
    instance_type = t2.micro
    subnet_id = module.vpc.public1b_subnet

    tags = {
      Name = "kapil_web_1b"
    }
}

resource "aws_instance" "db1a" {
    count = 1
    ami = ami-02e44367276fe7adc
    instance_type = t2.micro
    subnet_id = module.vpc.private1a_subnet

    tags = {
      Name = "kapil_db_1a"
    }
}

resource "aws_instance" "db1b" {
    count = 1
    ami = ami-02e44367276fe7adc
    instance_type = t2.micro
    subnet_id = module.vpc.private1b_subnet

    tags = {
      Name = "kapil_db_1b"
    }
}

output "public_1a_subnet" {
    value = module.vpc.subnet_pub_1a_id
}















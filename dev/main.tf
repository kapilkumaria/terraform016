provider "aws" {
   region = "ca-central-1"
}


module "vpc" {
   source = "../modules/vpc"
   vpc_cidr = "192.168.0.0/26"
   tenancy = "default"
   vpc_id = module.vpc.vpc_id
   pub-subnet_1a_cidr = "192.168.0.0/28"
   pub-subnet_1b_cidr = "192.168.0.16/28"
   pri-subnet_1a_cidr = "192.168.0.32/28"
   pri-subnet_1b_cidr = "192.168.0.48/28"
}


module "my_bastion" {
   source = "../modules/ec2"
   ec2_count = 1
   ami_id = "ami-02e44367276fe7adc"
   instance_type = "t2.micro"
   public-1a = module.vpc.public-1a
   public-1b = module.vpc.public-1b
   private-1a = module.vpc.private-1a
   private-1b = module.vpc.private-1b
}
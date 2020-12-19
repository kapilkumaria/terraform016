provider "aws" {
   region = "ca-central-1"
}


module "my_vpc" {
   source = "../modules/vpc"
   vpc_cidr = "192.168.0.0/26"
   tenancy = "dedicated"
   vpc_id = module.my_vpc.vpc_id
}


module "my_web1" {
   source = "../modules/ec2"
   ec2_count = 1
   ami_id = "ami-02e44367276fe7adc"
   instance_type = "t2.micro"
   public1a_subnet = module.vpc.subnet_pub_1a_id
}   


module "my_web2" {
   source = "../modules/ec2"
   ec2_count = 1
   ami_id = "ami-02e44367276fe7adc"
   instance_type = "t2.micro"
   public1b_subnet = module.vpc.subnet_pub_1b_id
}   


module "my_db1" {
   source = "../modules/ec2"
   ec2_count = 1
   ami_id = "ami-02e44367276fe7adc"
   instance_type = "t2.micro"
   private1a_subnet = module.vpc.subnet_pri_1a_id
}   


module "my_db2" {
   source = "../modules/ec2"
   ami_id = "ami-02e44367276fe7adc"
   instance_type = "t2.micro"
   private1b_subnet = module.vpc.subnet_pri_1b_id
}   

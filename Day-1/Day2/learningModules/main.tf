provider "aws"{
    region = "us-east-1"
}


#we are going to use module 
module "dev_env_vm"{
    source = "./module/ec2"

    ami = "ami-0ec10929233384c7f"
    instance_type = "t2.micro"
    name = "test_dev"
}

module "prod_env_vm"{
    source = "./module/ec2"

    ami = "ami-0ec10929233384c7f"
    instance_type = "t3.micro"
    name = "test_prod"
}
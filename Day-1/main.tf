variable "instance_type" {
    description = "Assigning the instance type as t3.micro"
    default = "t3.micro"
}

variable "ami" {
    description = "Assigning the ami details ubuntu"
    default = "ami-0ec10929233384c7f"
}

variable "region" {
    description = "Assigning the region"
    default = "us-east-1"
}

provider "aws"{
  region = var.region
}

resource "aws_instance" "my_ec2_vm" {
    ami = var.ami
    instance_type = var.instance_type

    tags {
        Names = "SRECloudAdda"
    }
}

output "show_my_machine_id"{
    value = instance_type.my_ec2_vm.id
}


#terraform apply -auto-approve
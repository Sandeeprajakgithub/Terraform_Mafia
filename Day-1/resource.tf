resource "aws_instance" "my_ec2_vm" {
    ami = "ami-0ec10929233384c7f"
    instance_type = "t3.micro"
    tags {
        Names = "SRECloudAdda"
    }
}
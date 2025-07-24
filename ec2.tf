provider "aws" {
  region = "us-west-1"
}

#EC2 Instances 
resource "aws_instance" "example" {
    count = 3
    ami = "aws-0a0409af1cb831414"
    instance_type = "t2.micro"

    tags = {
      Name = "MyEC2Instance-${count.index + 1}"
    }
}
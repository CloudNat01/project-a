provider "aws" {
    region = lookup(var.awslocation, "region")
  
}

resource "aws_vpc" "prod-vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = lookup(var.awsnames, "vpc-name")
    }
  
}

resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.prod-vpc.id
    cidr_block = "10.0.0.0/16"
    
    tags = {
      Name = lookup(var.awsnames, "subnet-name")
    }
}


resource "aws_instance" "prod-server" {
    ami      =  lookup(var.ec2content, "image")
    instance_type   = lookup(var.ec2content, "instance-type")
    key_name        = lookup(var.ec2content, "key-name")
    availability_zone = lookup(var.awslocation, "az")
    

    tags = {
        Name = lookup(var.awsnames, "ec2-name")
        Environment = "dev"
    }
  
}
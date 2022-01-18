resource "aws_vpc" "prod-vpc"
    cidr_block = "10.0.0.0/16"

    tags = {
      Name = "Prod-vpc"
    }

}

resource "aws_subnet" "subnet-1" {
    vpc_id - aws_vpc.prod-vpc.id
    cidr_block = "10.0.0.0/16"

    tags = {
      Name = "Prod-subnet" 
    } 
}

resource "aws_instance" "prod-server"
    ami = "ami-647882928937839"
    instance_type = "t2.micro"
    key_name = "cloudnat-key"
    availabiltiy_zone = "us-west-2"
    


    tags = {
        Name = "prod-server"
        Envirnoment = "dev"
    }

}

variable "awslocation" {
    description = "This will represent all locations"
    type = map(string)
    default = {
      region = "us-west-2"
      az     = "us-west-2"
    }
  
}


variable "awsnames" {
    type = map(string)
    default = {
      vpc-name = "Prod-vpc"
      subnet-name = "Prod-subnet"
      ec2-name = "prod-server"
    }
  
}


variable "ec2content" {
    type = map(string)
    default = {
      image = "ami-64788292893739"
      instance-type = "t2.micro"
      key-name = "cloudnat-key"
    }
  
}
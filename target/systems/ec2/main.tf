
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "server" {
    source = ""https://github.com/Engineer-Felix/module-systems/tree/main/target//systems/ec2
    num = 10
    intance_type = "t2.medium"
    ami = "ami-04823729c75214919"
}

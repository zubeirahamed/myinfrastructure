provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "prod-inst-grunt" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket         = "my-terragrunt-bucket1"
    key            = "path/to/terraform.tfstate"
    region         = "us-east-1"  # Your AWS region
    encrypt        = true
  }
}

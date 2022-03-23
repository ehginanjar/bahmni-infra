provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "bahmni-tf-bucket"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "bahmni-tf-lock"
  }
}
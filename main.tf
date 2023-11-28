terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.50.0"
    }
  }

  #adding s3 bucket for remote state storage
  backend "s3"{
    bucket = "tf-statefiles-bucket"
    key = "s3-buckets/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "s3_bucket" {
    source = "./S3_module"
    s3_bucket_name = var.s3_bucket_name
    #region = ap-south-1
    #tag_name = var.tag_name
}

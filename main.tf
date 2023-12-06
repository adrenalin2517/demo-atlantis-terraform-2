# main.tf

provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_s3_bucket" "my_bucket_second_repo" {
  bucket = "demo-atlantis-bucket-second-repo" # Set a unique bucket name
}

resource "aws_s3_bucket" "my_bucket_second_repo_2" {
  bucket = "demo-atlantis-bucket-second-repo-2" # Set a unique bucket name
}

resource "aws_s3_bucket" "my_bucket_second_repo_3" {
  bucket = "demo-atlantis-bucket-second-repo-3" # Set a unique bucket name
}

terraform {
  backend "s3" {
    bucket  = "terraform-atlantis-state" # Set a unique bucket name for storing Terraform state
    key     = "terraform-second-repo.tfstate"
    region  = "us-east-1" # Set the region of the state bucket
    encrypt = true
    profile = "791678585244_darkops-lenovo.admin"
  }
}

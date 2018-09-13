terraform {
  backend "s3" {
    key    = "terraform/test"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "test" {
  bucket = "elaheh_test_bucket"
}

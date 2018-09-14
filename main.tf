terraform {
  backend "s3" {
    key    = "terraform/test"
    region = "ap-southeast-2"
  }
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "sydney"
}

resource "aws_s3_bucket" "test" {
  bucket = "elaheh_test_bucket"
}

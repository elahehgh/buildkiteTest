terraform {
  backend "s3" {
    key    = "terraform/test"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"

}

resource "aws_s3_bucket" "test" {
  bucket = "elaheh_test_bucket"
}

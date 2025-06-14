provider "aws" {
  region = "ap-south-1"
}
resource "aws_s3_bucket" "state-file" {
  bucket = "terraform-avishek"
}

resource "aws_dynamodb_table" "terraform-db" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}
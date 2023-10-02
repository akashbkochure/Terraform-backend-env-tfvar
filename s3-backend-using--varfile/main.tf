provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}


resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  tags = {
    Name        = "My bucket"
    
  }
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = var.acl_value
}


resource "aws_s3_object" "akash_sign" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "demo/Akash_Sign.jpeg"
  source = "C:/Users/vb kochure/Downloads/Akash Sign.jpeg"
}




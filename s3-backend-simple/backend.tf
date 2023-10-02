terraform {
  backend "s3" {
    bucket  = "vbkochure-backend"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

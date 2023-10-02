terraform {
  backend "s3" {
    bucket  = var.workspace == "dev" ? var.s3_bucket_dev : var.s3_bucket_prod
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

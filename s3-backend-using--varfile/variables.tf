variable "bucket_name" {

  default = "vbkochure"
}

variable "acl_value" {

  default = "private"

}

variable "aws_access_key" {

  default = ""

}

variable "aws_secret_key" {

  default = ""

}

variable "region" {

  default = "us-east-1"

}

variable "workspace" {
  description = "The name of the current workspace"
  default     = "dev"
}



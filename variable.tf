variable "region" {
  description = "region where the s3 bucket will be created"
  type = string  
}

variable "s3_bucket_name" {
  description = "name of the s3 bucket"
  type = string
}

variable "env" {
  default = "environment of cloud front distribution"
  type = string  
}

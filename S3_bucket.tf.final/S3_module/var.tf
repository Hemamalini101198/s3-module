variable "region" {
    description = "region where the s3 bucket will be created"
    type = string  
}

variable "s3_bucket_name" {
  description = "name of the s3 bucket"
  type = string
}

variable "tag_name" {
  description = "tag for the s3 bucket"
  type = string
}
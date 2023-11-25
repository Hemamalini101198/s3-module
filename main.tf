module "s3_bucket" {
    source = "./S3_module"
    s3_bucket_name = var.s3_bucket_name
    region = ap-south-1
    #tag_name = var.tag_name
}

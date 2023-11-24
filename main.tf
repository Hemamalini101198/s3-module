module "s3_bucket" {
    source = "./S3_module"
    s3_bucket_name = var.s3_bucket_name
    region = var.region
    tag_name = var.tags
}
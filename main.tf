module "s3"{
    source = "./S3_module"
    region = var.region
    s3_bucket_name = var.s3_bucket_name
}

module "cloudfront"{
    source = "./cloudfront"
    origin_id = module.s3.s3_bucket_endpoint
    env = var.env
    domain_name = module.s3.s3_bucket_endpoint
    target_origin_id = module.s3.s3_bucket_endpoint
    region = var.region
    depends_on = [module.s3]    
}

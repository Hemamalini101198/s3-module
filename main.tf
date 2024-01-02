module "s3"{
    source = "./S3_module"
    region = var.region
    s3_bucket_name = var.s3_bucket_name
}

module "cloudfront"{
    source = "./cloudfront"
    origin_id = 
    env = var.env
    domain_name = var.domain_name
    target_origin_id = var.target_origin_id
    region = var.region
    depends_on = [module.s3]    
}

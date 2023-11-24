output "s3_bucket_name" {
  value = module.s3_bucket.s3_bucket_name
}

output "s3_bucket_arn" {
  value = module.s3_bucket.s3_bucket_arn
}

output "s3_bucket_id" {
  value = module.s3_bucket.s3_bucket_id
 }

output "bucket_regional_domain_name" {
  value = module.s3_bucket.bucket_regional_domain_name
}


output "s3_bucket_endpoint" {
    value = module.s3_bucket.s3_bucket_endpoint
}

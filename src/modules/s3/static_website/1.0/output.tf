output "this_s3_arn" {
  value = aws_s3_bucket.bucket.arn
}

output "this_s3_id" {
  value = aws_s3_bucket.bucket.id
}

output "this_s3_bucket_regional_domain_name" {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}
output "source_data_bucket_id" {
  value = aws_s3_bucket.source-data-bucket.id
}

output "code_bucket_id" {
  value = aws_s3_bucket.code-bucket.id
}

output "target_data_bucket_id" {
  value = aws_s3_bucket.target-data-bucket.id
}
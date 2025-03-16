# S3 Bucket for Source Data
resource "aws_s3_bucket" "source-data-bucket" {
  bucket        = var.source_bucket_name
  force_destroy = true
}

resource "aws_s3_object" "data-object" {
  bucket = aws_s3_bucket.source-data-bucket.bucket
  key    = var.source_file_key
  source = var.source_file_path
}

# S3 Bucket for Target Data
resource "aws_s3_bucket" "target-data-bucket" {
  bucket        = var.target_bucket_name
  force_destroy = true
}

# S3 Bucket for Saving Code
resource "aws_s3_bucket" "code-bucket" {
  bucket        = var.code_bucket_name
  force_destroy = true
}

resource "aws_s3_object" "code-data-object" {
  bucket = aws_s3_bucket.code-bucket.bucket
  key    = var.code_file_key
  source = var.code_file_path
}

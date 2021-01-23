resource "aws_s3_bucket" "s3_bucket" {
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true
}

resource "aws_s3_bucket_object" "s3_object" {
  bucket = aws_s3_bucket.s3_bucket.id
  key    = var.lambda_source_s3_key
  source = var.lambda_source
}

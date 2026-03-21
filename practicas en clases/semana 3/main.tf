resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terralabs-jorge-28"
  tags = {
    Name = "talla xl"
  }
}

resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.demo_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "owner" {
  bucket = aws_s3_bucket.demo_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.demo_bucket.id
  depends_on = [aws_s3_bucket_ownership_controls.owner, aws_s3_bucket_public_access_block.access]

  acl = "public-read"
}

resource "aws_s3_object" "demo_file" {
  bucket = aws_s3_bucket.demo_bucket.id
  acl = "public-read" // 👍

  key = "demo_s3.txt"
  content = "hola mundo"
}

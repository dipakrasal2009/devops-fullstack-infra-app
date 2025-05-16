resource "aws_s3_bucket" "mybucket" {
  bucket = "myproject-${random_id.bucket.hex}"
}

resource "random_id" "bucket" {
  byte_length = 4
}


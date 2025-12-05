resource "random_string" "s3_suffix" {
  length   = 4
  special = false
  upper   = false
}

resource "aws_s3_bucket" "app-storage" {
  bucket = "app-${random_string.s3_suffix.result}"
}
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.env}-demo-bucket"
}
terraform {
  backend "s3" {
    bucket = "demo-bucket-29"
    region = "eu-north-1"
    key    = "preye-backend/terraform.tfstate"
  }
}
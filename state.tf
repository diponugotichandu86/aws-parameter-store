terraform {
  backend "s3" {
    bucket = "terraform-486"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}
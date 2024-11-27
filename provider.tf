provider "aws" {
  region     = "us-west-2"  # Update to your desired AWS region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

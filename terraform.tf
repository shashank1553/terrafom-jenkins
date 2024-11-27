terraform {
  required_version = "1.9.8"
  required_providers {
    aws = {
        version = "5.76.0"
        source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region     = "us-west-2"  # Make sure to specify your region
  access_key = getenv("AWS_ACCESS_KEY_ID")
  secret_key = getenv("AWS_SECRET_ACCESS_KEY")
}

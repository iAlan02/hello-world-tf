provider "aws" {
  region                      = var.region
  access_key                  = "fake_access_key"
  s3_force_path_style         = true
  secret_key                  = "fake_secret_access_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = "http://localhost:4567"
    iam            = "http://localhost:4593"
    lambda         = "http://localhost:4574"
    s3             = "http://localhost:4572"
  }
}

#provider
variable "region" {}

#lambda
variable "lambda_name" {}

#s3
variable "bucket_name" {}
variable "lambda_source_s3_key" {}
variable "lambda_source" {}

#api-gateway
variable "api_gateway_name" {}

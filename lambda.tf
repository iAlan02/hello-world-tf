resource "aws_lambda_function" "lambda" {
  function_name = var.lambda_name
  s3_bucket     = var.bucket_name
  s3_key        = var.lambda_source_s3_key
  role          = aws_iam_role.role.arn
  handler       = "index.handler"
  runtime       = "nodejs12.x"
}

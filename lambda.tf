resource "aws_lambda_function" "lambda" {
  function_name = var.lambda_name
  s3_bucket     = aws_s3_bucket.s3_bucket.s3_key
  role          = aws_iam_role.role.arn
  handler       = "index.handler"
  runtime       = "nodejs12.x"
}

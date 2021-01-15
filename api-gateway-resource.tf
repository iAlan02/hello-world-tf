resource "aws_api_gateway_resource" "resource" {
  rest_api_id = aws_api_gateway_res_api.api_gateway.id
  path_part   = "api"
}

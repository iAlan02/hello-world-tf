resource "aws_iam_role" "role" {
  name = var.role_name
}

resource "aws_iam_policy_attachment" "policy_attachment" {
  name       = var.role_policy_attachment
  roles      = [aws_iam_role.role.name]
  policy_arn = aws_iam_policy.policy.arn
}

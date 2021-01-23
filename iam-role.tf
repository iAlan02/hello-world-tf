resource "aws_iam_role" "role" {
  name               = var.role_name
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "policy_attachment" {
  name       = var.role_policy_attachment
  roles      = [aws_iam_role.role.name]
  policy_arn = aws_iam_policy.policy.arn
}

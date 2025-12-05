resource "aws_iam_role_policy" "s3_access_policy" {
  name = "s3_access_policy"
  role = aws_iam_role.ec2_s3_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = [
        "s3:GetObject",
        "s3:PutObject",
        "s3:ListBucket"
      ]
      Effect = "Allow"
      "Resource" : [
        "arn:aws:s3:::app-*",
        "arn:aws:s3:::app-*/*"
      ]
    }]
  })
}
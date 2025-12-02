### ubuntu filter
```
ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*
099720109477
```

### s3 role
```
Version = "2012-10-17"
  Statement = [{
    Action = "sts:AssumeRole"
    Effect = "Allow"
    Principal = {
      Service = "ec2.amazonaws.com"
    }
```
### s3 policy
```
Version = "2012-10-17"
  Statement = [{
    Action = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:ListBucket"
    ]
    Effect = "Allow"
      "Resource" : [
        "arn:aws:s3:::my-app-bucket-*",
        "arn:aws:s3:::my-app-bucket-*/*"
      ]
    }]
```

### Ubuntu AMI
```
ami-0ecb62995f68bb549
```

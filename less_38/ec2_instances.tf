resource "aws_instance" "server-1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ubuntu_key.id
  vpc_security_group_ids = [aws_security_group.ssh-sg.id]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  depends_on = [
    aws_iam_role_policy.s3_access_policy,
    aws_iam_instance_profile.ec2_profile,
    aws_s3_bucket.app-storage
  ]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_key_pair" "ubuntu_key" {
  key_name   = "ubuntu_key"
  public_key = file("/home/ubuntu/.ssh/id_ed25519.pub")
}

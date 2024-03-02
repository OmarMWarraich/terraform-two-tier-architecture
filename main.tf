
resource "aws_key_pair" "deployer" {
  key_name   = "mtckey"
  public_key = file("~/.ssh/mtckey.pub")
}
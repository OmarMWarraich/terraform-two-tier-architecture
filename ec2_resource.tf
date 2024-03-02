# Create EC2 Instances

resource "aws_instance" "web1" {
  ami                         = "ami-0c7217cdde317cfec"
  instance_type               = "t2.micro"
  key_name                    = "twotier-key-pair"
  availability_zone           = "us-east-1a"
  vpc_security_group_ids      = [aws_security_group.alb_sg.id]
  subnet_id                   = aws_subnet.public_subnet_1.id
  associate_public_ip_address = true
  tags = {
    Name = "web1_instance"
  }
}

resource "aws_instance" "web2" {
  ami                         = "ami-0c7217cdde317cfec"
  instance_type               = "t2.micro"
  key_name                    = "twotier-key-pair"
  availability_zone           = "us-east-1b"
  vpc_security_group_ids      = [aws_security_group.alb_sg.id]
  subnet_id                   = aws_subnet.public_subnet_2.id
  associate_public_ip_address = true
  tags = {
    Name = "web2_instance"
  }
}
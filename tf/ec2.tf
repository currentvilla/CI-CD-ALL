#PR提出用
resource "aws_instance" "ci-cd-all-ec2" {
  count         = 1
  ami           = "ami-025bbcfb04b076789"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.pubsub_a.id
  key_name      = "AWS-study"

  vpc_security_group_ids = [aws_security_group.ci-cd-all-sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "ci-cd-all-ec2"
  }
}

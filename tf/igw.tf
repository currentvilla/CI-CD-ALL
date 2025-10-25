resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ci-cd-all-vpc.id

  tags = {
    Name = "igw"
  }
}
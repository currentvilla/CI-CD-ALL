#PR提出用
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.ci-cd-all-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.ci-cd-all-vpc.id

  tags = {
    Name = "private-rt"
  }
}
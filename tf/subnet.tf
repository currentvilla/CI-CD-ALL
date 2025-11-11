#PR提出用
resource "aws_subnet" "pubsub_a" {
  vpc_id                  = aws_vpc.ci-cd-all-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "pubsub_a"
  }
}

resource "aws_subnet" "pubsub_c" {
  vpc_id                  = aws_vpc.ci-cd-all-vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "pubsub_c"
  }
}

resource "aws_subnet" "pvtsub_a" {
  vpc_id            = aws_vpc.ci-cd-all-vpc.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "pvtsub_a"
  }
}

resource "aws_subnet" "pvtsub_c" {
  vpc_id            = aws_vpc.ci-cd-all-vpc.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "pvtsub_c"
  }
}
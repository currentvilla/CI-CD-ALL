resource "aws_vpc" "ci-cd-all-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ci-cd-all-vpc"
  }
}
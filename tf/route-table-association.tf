#PR提出用
resource "aws_route_table_association" "pubsub_a" {
  subnet_id      = aws_subnet.pubsub_a.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "pubsub_c" {
  subnet_id      = aws_subnet.pubsub_c.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "pvtsub_a" {
  subnet_id      = aws_subnet.pvtsub_a.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "pvtsub_c" {
  subnet_id      = aws_subnet.pvtsub_c.id
  route_table_id = aws_route_table.private-rt.id
}
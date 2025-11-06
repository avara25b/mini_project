####### public route table 
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "${var.name} - public_route_table"
  }
}

resource "aws_route_table_association" "public" {
  for_each = var.public_subnets
  subnet_id      = aws_subnet.public_subnet[each.key].id
  route_table_id = aws_route_table.public.id
}
#########

######### private route table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route = []

  tags = {
    Name = "${var.name} - private_route_table"
  }
}

resource "aws_route_table_association" "private" {
  for_each = var.private_subnets
  subnet_id      = aws_subnet.private_subnet[each.key].id
  route_table_id = aws_route_table.private.id
}
#########
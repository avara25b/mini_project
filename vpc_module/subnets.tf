resource "aws_subnet" "public_subnet" {
  for_each = var.public_subnets
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value.cidr
  availability_zone = each.value.az

  tags = {
    Name = each.key
  }
}

resource "aws_subnet" "private_subnet" {
  for_each = var.private_subnets
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value.cidr
  availability_zone = each.value.az

  tags = {
    Name = each.key
  }
}
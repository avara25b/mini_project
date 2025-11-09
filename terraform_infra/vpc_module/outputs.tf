output "vpc_id" {
    value = aws_vpc.main.id
}

output "subnet_ids" {
  value = [for s in aws_subnet.private_subnet : s.id]
}
output "this_vpc_id" {
  value = aws_vpc.this.id
}
output "this_vpc_arn" {
  value = aws_vpc.this.arn
}
output "this_vpc_default_security_group_id" {
  value = aws_vpc.this.default_security_group_id
}
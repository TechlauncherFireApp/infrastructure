output "this_vpc_public_subnet_ids" {
  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id,
    aws_subnet.public_c.id]
}
output "this_vpc_private_subnet_ids" {
  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id,
    aws_subnet.private_c.id]
}
output "this_vpc_public_subnet_arns" {
  value = [
    aws_subnet.public_a.arn,
    aws_subnet.public_b.arn,
    aws_subnet.public_c.arn]
}
output "this_vpc_private_subnet_arns" {
  value = [
    aws_subnet.private_a.arn,
    aws_subnet.private_b.arn,
    aws_subnet.private_c.arn]
}
output "this_vpc_public_subnet_cidrs" {
  value = [
    aws_subnet.public_a.cidr_block,
    aws_subnet.public_b.cidr_block,
    aws_subnet.public_c.cidr_block]
}
output "this_vpc_private_subnet_cidrs" {
  value = [
    aws_subnet.private_a.cidr_block,
    aws_subnet.private_b.cidr_block,
    aws_subnet.private_c.cidr_block]
}
output "this_vpc_subnet_ids" {
  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id,
    aws_subnet.public_c.id,
    aws_subnet.private_a.id,
    aws_subnet.private_b.id,
    aws_subnet.private_c.id]
}
output "this_vpc_subnet_arn" {
  value = [
    aws_subnet.public_a.arn,
    aws_subnet.public_b.arn,
    aws_subnet.public_c.arn,
    aws_subnet.private_a.arn,
    aws_subnet.private_b.arn,
    aws_subnet.private_c.arn]
}
output "this_vpc_subnet_cidrs" {
  value = [
    aws_subnet.public_a.cidr_block,
    aws_subnet.public_b.cidr_block,
    aws_subnet.public_c.cidr_block,
    aws_subnet.private_a.cidr_block,
    aws_subnet.private_b.cidr_block,
    aws_subnet.private_c.cidr_block]
}
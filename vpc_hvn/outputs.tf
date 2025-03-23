output "vpc_id" {
  description = "ID of the VPC with peering connection to HVN."
  value = aws_vpc.peer.id
}
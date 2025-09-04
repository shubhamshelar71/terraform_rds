output "subnet_data" {
  value = data.aws_subnet.subnet_az_1a.id
}
output "rds_address" {
  value = aws_db_instance.db_instance.address
}

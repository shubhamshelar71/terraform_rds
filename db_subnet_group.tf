resource "aws_db_subnet_group" "db_sub_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [
    data.aws_subnet.subnet_az_1a.id,
    data.aws_subnet.subnet_az_1b.id
  ]

  tags = {
    Name = "My DB subnet group"
  }
}

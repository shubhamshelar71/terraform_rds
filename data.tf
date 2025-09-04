# Fetch VPC
data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["tcw_vpc"]
  }
}

# Fetch Subnet 1
data "aws_subnet" "subnet_az_1a" {
  filter {
    name   = "tag:Name"
    values = ["tcw_database_subnet_az_1a"]
  }
}

# Fetch Subnet 2
data "aws_subnet" "subnet_az_1b" {
  filter {
    name   = "tag:Name"
    values = ["tcw_database_subnet_az_1b"]
  }
}

# Fetch Security Group
data "aws_security_group" "tcw_sg" {
  filter {
    name   = "tag:Name"
    values = ["tcw_security_group"]
  }
}

# Fetch Availability Zones (if needed)
data "aws_availability_zones" "available" {
  state = "available"
}

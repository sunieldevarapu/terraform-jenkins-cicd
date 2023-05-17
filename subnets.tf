data "aws_availability_zones" "available" {}
resource "random_integer" "random" {
  min = 1
  max = 100
}

resource "random_shuffle" "public_az" {
  input        = data.aws_availability_zones.available.names
  result_count = 10
}

resource "aws_subnet" "web_server_subnet_1" {
  vpc_id                  = aws_vpc.startup_vpc.id
  availability_zone       = "us-east-1"
  cidr_block              = "10.2.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Web Server Subnet - 1"
  }
}

resource "aws_subnet" "web_server_subnet_2" {
  vpc_id                  = aws_vpc.startup_vpc.id
  availability_zone       = "us-east-1"
  cidr_block              = "10.2.4.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Web Server Subnet - 2"
  }
}

resource "aws_subnet" "database_subnet_1" {
  vpc_id                  = aws_vpc.startup_vpc.id
  availability_zone       = "us-east-1"
  cidr_block              = "10.2.6.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Database Subnet - 1"
  }
}

resource "aws_subnet" "database_subnet_2" {
  vpc_id                  = aws_vpc.startup_vpc.id
  availability_zone       = "us-east-1"
  cidr_block              = "10.2.8.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Database Subnet - 2"
  }
}
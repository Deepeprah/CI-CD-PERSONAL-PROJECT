# create vpc
resource "aws_vpc" "tlc_vpc" {
  cidr_block              = var.vpc_cidr
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags                    = {
    Name                  = "tlc-vpc"
  }
}

# create internet gateway and attach it to vpc
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id    = aws_vpc.tlc_vpc.id

  tags      = {
    Name    = "tlc-igw"
  }
}

# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}

# create public subnet tlc1
resource "aws_subnet" "public_subnet_tlc1" {
  vpc_id                  = aws_vpc.tlc_vpc.id
  cidr_block              = var.public_subnet_tlc1_cidr

  tags      = {
    Name    = "pub_subnet_tlc1"
  }
}

# create public subnet tlc2
resource "aws_subnet" "public_subnet_tlc2" {
  vpc_id                  = aws_vpc.tlc_vpc.id
  cidr_block              = var.public_subnet_tlc2_cidr
  
  tags      = {
    Name    = "public_subnet_tlc2"
  }
}

# create route table and add public route
resource "aws_route_table" "public_route_table" {
  vpc_id       = aws_vpc.tlc_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags       = {
    Name     = "public_route_table"
  }
}

# associate public subnet tlc1 to "public route table"
resource "aws_route_table_association" "public_subnet_az1_route_table_association" {
  subnet_id           = aws_subnet.public_subnet_tlc1.id
  route_table_id      = aws_route_table.public_route_table.id
}

# associate public subnet tlc2 to "public route table"
resource "aws_route_table_association" "public_subnet_az2_route_table_association" {
  subnet_id           = aws_subnet.public_subnet_tlc2.id
  route_table_id      = aws_route_table.public_route_table.id
}

# create private app subnet tlc1
resource "aws_subnet" "private_app_subnet_tlc1" {
  vpc_id                   = aws_vpc.tlc_vpc.id
  cidr_block               = var.private_app_subnet_tlc1_cidr
 

  tags      = {
    Name    = "private_app_subnet_tlc1"
  }
}

# create private app subnet tlc2
resource "aws_subnet" "private_app_subnet_tlc2" {
  vpc_id                   = aws_vpc.tlc_vpc.id
  cidr_block               = var.private_app_subnet_tlc2_cidr

  tags      = {
    Name    =  "private_app_subnet_tlc2"
  }
}

# create private data subnet tlc1
resource "aws_subnet" "private_data_subnet_tlc1" {
  vpc_id                   = aws_vpc.tlc_vpc.id
  cidr_block               = var.private_data_subnet_tlc1_cidr
 

  tags      = {
    Name    = "private_data_subnet_tlc2"
  }
}

# create private data subnet tlc2
resource "aws_subnet" "private_data_subnet_tlc2" {
  vpc_id                   = aws_vpc.tlc_vpc.id
  cidr_block               = var.private_data_subnet_tlc2_cidr
 


  tags      = {
    Name    = "private_data_subnet_tlc2"
  }
}
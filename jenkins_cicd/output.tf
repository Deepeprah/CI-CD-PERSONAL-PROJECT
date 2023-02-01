// create an output for the region 
output "region" {
  value = var.region
}


//create a vpc cider block
output "tlc_vpc" {
  value = aws_vpc.tlc_vpc.id
}

// creat a public subnet1 output
output "public_subnet_tlc1" {
  value = aws_subnet.public_subnet_tlc1.id
}

// creat a public subnet2 output
output "public_subnet_tlc2_cidr" {
  value = aws_subnet.public_subnet_tlc2.id
}

// creat a private app sybnet output 
output "private_app_subnet_tlc1" {
  value = aws_subnet.private_app_subnet_tlc1.id
}

// creat a private subnet output 
output "private_app_subnet_tlc2_cidr" {
  value = aws_subnet.private_app_subnet_tlc2.id
}

//creat a private data subnet output 
output "private_data_subnet_tlc1" {
  value = aws_subnet.private_data_subnet_tlc1.id
}

//creat a private data subnet output 
output "private_data_subnet_tlc2" {
  value = aws_subnet.private_data_subnet_tlc2.id
}

//creat out put for internet gateway 
output "internet_gateway" {
  value = aws_internet_gateway.internet_gateway
}

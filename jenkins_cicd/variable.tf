// aws provider
variable "region" {
    type = string 
    default = "eu-west-2"
    description = "created region for the vpc"
}
// create a variable vpc cidr
variable "vpc_cidr"{
    type        = string
    default     = "10.0.0.0/16"
    description = "cidr block for vpc"
}

// create a variable public subnet cidr1
variable "public_subnet_tlc1_cidr"{
    type        = string
    default     = "10.0.1.0/24"
    description = "public_subnet_cidr block"

}

// create a variable public subnet cidr2
variable "public_subnet_tlc2_cidr"{
    type        = string
    default     = "10.0.2.0/24"
    description = "public_subnet_tlc2_cidr_block"
}

// create a variable private app subnet 1
variable "private_app_subnet_tlc1_cidr" {
    type        =  string
    default     = "10.0.3.0/24"
    description = "private app subnet1 cidr block "
}

// create a variable private app subnet2
variable "private_app_subnet_tlc2_cidr" {
    type        = string
    default     = "10.0.4.0/24"
    description = "private app subnet2 cidr block "
}

// create a variable private data subnet1
variable "private_data_subnet_tlc1_cidr" {
    type        = string
    default     = "10.0.5.0/24"
    description = "private data subnet cidr block"
}

//create a variable private data subnet2
variable "private_data_subnet_tlc2_cidr" {       
    type        = string
    default     = "10.0.6.0/24"
    description = "private subnet cidr block"
    
}
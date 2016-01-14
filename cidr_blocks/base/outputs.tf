/*
	the computed_* subnet CIDRs will be used/exposed through the cidr_blocks module
*/


output "computed_aws" {
    value = "${var.input_aws_cidr_block}"
}


#### US-East1 Region CIDRs 

##### Hub VPC CIDRs
###################

output "computed_vpc_hub_us_east1" {
	value = "${var.input_vpc_hub_us_east1}"						# VPC Hub CIDRs
}

output "computed_az1_vpc_hub_us_east1" {
	value = "${var.input_az1_vpc_hub_us_east1}"				# first availability zone
}
output "computed_subnet1_az1_vpc_hub_us_east1" {
	value = "${var.input_subnet1_az1_vpc_hub_us_east1}"				
}
output "computed_subnet2_az1_vpc_hub_us_east1" {
	value = "${var.input_subnet2_az1_vpc_hub_us_east1}"				
}


output "computed_az2_vpc_hub_us_east1" {
	value = "${var.input_az2_vpc_hub_us_east1}"				# second availability zone
}
output "computed_subnet1_az2_vpc_hub_us_east1" {
	value = "${var.input_subnet1_az2_vpc_hub_us_east1}"				
}
output "computed_subnet2_az2_vpc_hub_us_east1" {
	value = "${var.input_subnet2_az2_vpc_hub_us_east1}"				
}


#### Prod VPC CIDRs
###################

output "computed_vpc_prod_us_east1" {
	value = "${var.input_vpc_prod_us_east1}"						# VPC Prod CIDRs
}

output "computed_az1_vpc_prod_us_east1" {
	value = "${var.input_az1_vpc_prod_us_east1}"				# first availability zone
}
output "computed_subnet1_az1_vpc_prod_us_east1" {
	value = "${var.input_subnet1_az1_vpc_prod_us_east1}"				
}
output "computed_subnet2_az1_vpc_prod_us_east1" {
	value = "${var.input_subnet2_az1_vpc_prod_us_east1}"				
}


output "computed_az2_vpc_prod_us_east1" {
	value = "${var.input_az2_vpc_prod_us_east1}"				# second availability zone
}
output "computed_subnet1_az2_vpc_prod_us_east1" {
	value = "${var.input_subnet1_az2_vpc_prod_us_east1}"				
}
output "computed_subnet2_az2_vpc_prod_us_east1" {
	value = "${var.input_subnet2_az2_vpc_prod_us_east1}"				
}

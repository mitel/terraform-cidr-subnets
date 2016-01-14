/*
	the public interface of the cidr_blocks module.
	it exposes some or all the CIDR blocks calculated in main.tf.
*/


output "aws" {
	value = "${module.base.computed_aws}"
}


###### US East1 Region

output "vpc_hub_us_east1" {
	value = "${module.base.computed_vpc_hub_us_east1}"				# VPC Hub
}

output "subnet1_az1_vpc_hub_us_east1" {
	value = "${module.base.computed_subnet1_az1_vpc_hub_us_east1}"	# public subnet in hub/AZ1			
}

output "subnet2_az1_vpc_hub_us_east1" {
	value = "${module.base.computed_subnet2_az1_vpc_hub_us_east1}"	# private subnet in hub/AZ1		
}

output "subnet1_az2_vpc_hub_us_east1" {
	value = "${module.base.computed_subnet1_az2_vpc_hub_us_east1}"	# public subnet in hub/AZ2			
}

output "subnet2_az2_vpc_hub_us_east1" {
	value = "${module.base.computed_subnet2_az2_vpc_hub_us_east1}"	# private subnet in hub/AZ2	
}


output "vpc_prod_us_east1" {										# VPC Prod
	value = "${module.base.computed_vpc_prod_us_east1}"
}

output "subnet2_az1_vpc_prod_us_east1" {
	value = "${module.base.computed_subnet2_az1_vpc_prod_us_east1}"	# private subnet in prod/AZ1		
}

output "subnet2_az2_vpc_prod_us_east1" {
	value = "${module.base.computed_subnet2_az2_vpc_prod_us_east1}"	# private subnet in prod/AZ2	
}

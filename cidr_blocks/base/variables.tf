/* 

	Pure parameterized module where each variable is a CIDR block initialized/calculated 
	in the cidr_block module

*/

variable "input_aws_cidr_block" {}

#### US-East1 Region CIDRs 
# Hub VPC CIDRs

variable "input_vpc_hub_us_east1" {}			# hub vpc 

variable "input_az1_vpc_hub_us_east1" {}		# first availability zone
variable "input_subnet1_az1_vpc_hub_us_east1" {}
variable "input_subnet2_az1_vpc_hub_us_east1" {}

variable "input_az2_vpc_hub_us_east1" {}		# second availability zone
variable "input_subnet1_az2_vpc_hub_us_east1" {}
variable "input_subnet2_az2_vpc_hub_us_east1" {}


# Prod VPC CIDRs
variable "input_vpc_prod_us_east1" {}			# prod vpc 

variable "input_az1_vpc_prod_us_east1" {}		# first availability zone
variable "input_subnet1_az1_vpc_prod_us_east1" {}
variable "input_subnet2_az1_vpc_prod_us_east1" {}

variable "input_az2_vpc_prod_us_east1" {}		# second availability zone
variable "input_subnet1_az2_vpc_prod_us_east1" {}
variable "input_subnet2_az2_vpc_prod_us_east1" {}

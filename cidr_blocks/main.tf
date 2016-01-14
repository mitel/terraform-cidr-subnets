
/*
  workaround for a Terraform limitation that does not let you use interpolation in 
  interpolation functions (eg: cidrsubnet(${blah}, ...))

  this module instantiates/uses the 'base' module, initializing/calculating all the possible subnets.
  it also exposes some or all of the calculated CIDR blocks in the outputs.tf file.
*/

module "base" {
  source = "./base"
  input_aws_cidr_block 			= "10.0.0.0/8"
  
  ##### US East1 Region VPC, Av Zones and subnet CIDRs
  ####################################################

  input_vpc_hub_us_east1 		= "${cidrsubnet(module.base.computed_aws, 8, 1)}"					# VPC Hub 
  
  input_az1_vpc_hub_us_east1 	= "${cidrsubnet(module.base.computed_vpc_hub_us_east1, 2, 0)}"		   # Av Zone1
  input_subnet1_az1_vpc_hub_us_east1 = "${cidrsubnet(module.base.computed_az1_vpc_hub_us_east1, 2, 0)}"
  input_subnet2_az1_vpc_hub_us_east1 = "${cidrsubnet(module.base.computed_az1_vpc_hub_us_east1, 2, 1)}"

  input_az2_vpc_hub_us_east1 	= "${cidrsubnet(module.base.computed_vpc_hub_us_east1, 2, 1)}"		   # Av Zone2
  input_subnet1_az2_vpc_hub_us_east1 = "${cidrsubnet(module.base.computed_az2_vpc_hub_us_east1, 2, 0)}"
  input_subnet2_az2_vpc_hub_us_east1 = "${cidrsubnet(module.base.computed_az2_vpc_hub_us_east1, 2, 1)}"


  input_vpc_prod_us_east1 		= "${cidrsubnet(module.base.computed_aws, 8, 10)}"			# VPC Prod
  
  input_az1_vpc_prod_us_east1 	= "${cidrsubnet(module.base.computed_vpc_prod_us_east1, 2, 0)}"    # Av Zone1
  input_subnet1_az1_vpc_prod_us_east1 = "${cidrsubnet(module.base.computed_az1_vpc_prod_us_east1, 2, 0)}"
  input_subnet2_az1_vpc_prod_us_east1 = "${cidrsubnet(module.base.computed_az1_vpc_prod_us_east1, 2, 1)}"
  
  input_az2_vpc_prod_us_east1 	= "${cidrsubnet(module.base.computed_vpc_prod_us_east1, 2, 1)}"    # Av Zone2
  input_subnet1_az2_vpc_prod_us_east1 = "${cidrsubnet(module.base.computed_az2_vpc_prod_us_east1, 2, 0)}"
  input_subnet2_az2_vpc_prod_us_east1 = "${cidrsubnet(module.base.computed_az2_vpc_prod_us_east1, 2, 1)}"

}

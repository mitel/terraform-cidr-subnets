# CIDR subnets Terraform module
A Terraform module for generating CIDR subnets for an AWS deployment with two VPCs, two availability zones and two subnets per AZ.

It acts as a workaround the fact that currently you cannot use interpolation within interpolation functions:
eg: cidrsubnet(${input_subnet}, 8, 1) doesn't work today

Check cidr_blocks/main.tf and change the input_aws_cidr_block value, used to generate the other subnet values.
The logic is inspired from this article:
`https://medium.com/aws-activate-startup-blog/practical-vpc-design-8412e1a18dcc#.11hdkhr3h`

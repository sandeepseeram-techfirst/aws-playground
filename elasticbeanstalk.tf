resource "aws_accessanalyzer_analyzer" {}

resource "aws_elastic_beanstalk_application" "" {
  name = sandeepseeram
  name = 
  appversion_lifecycle "" {  }
}

resource "aws_s3_bucket" {}

resource "aws_vpc" {}

resource "aws_vpc_endpoint_subnet_association" {}

resource "aws_route" {}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.33.0"
    # Assign IPv6 address on redshift subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  redshift_subnet_assign_ipv6_address_on_creation = false
    # Assign IPv6 address on elasticache subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  elasticache_subnet_assign_ipv6_address_on_creation = false
    # Specifies the number of days you want to retain log events in the specified log group for VPC flow logs.
  flow_log_cloudwatch_log_group_retention_in_days = 1
    # Should be true to enable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic.
  enable_classiclink_dns_support = false
    # Assign IPv6 address on intra subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  intra_subnet_assign_ipv6_address_on_creation = false
    # The ARN of the KMS Key to use when encrypting log data for VPC flow logs.
  flow_log_cloudwatch_log_group_kms_key_id = ""
    # The fields to include in the flow log record, in the order in which they should appear.
  flow_log_log_format = ""
    # The Availability Zone for the VPN Gateway
  vpn_gateway_az = ""
    # Assign IPv6 address on private subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  private_subnet_assign_ipv6_address_on_creation = false
    # Assign IPv6 address on database subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  database_subnet_assign_ipv6_address_on_creation = false
    # Assign IPv6 address on public subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
  public_subnet_assign_ipv6_address_on_creation = false
    # Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic.
  enable_classiclink = false
}

module "elb" {
  source = "terraform-aws-modules/elb/aws"
  version = "2.3.0"
    # The name of the ELB
  name = ""
    # A list of security group IDs to assign to the ELB
  security_groups = [  ]
    # A health check block
  health_check = {  }
    # A list of listener blocks
  listener = [  ]
    # A list of subnet IDs to attach to the ELB
  subnets = [  ]
    # The prefix name of the ELB
  name_prefix = ""
}

resource "aws_glue_catalog_table" {}

# Required
variable "project_name" {
  type        = "string"
  description = "Set this, resources are given a unique name based on this"
}

variable "hashi_tags" {
  type = "map"

  default = {
    "TTL"     = ""
    "owner"   = ""
    "project" = ""
  }
}

variable "ssh_key_name" {
  description = "Name of existing AWS ssh key"
}

variable "route53_zone_id" {
  description = "Route 53 zone into which to place hostnames"
}

variable "top_level_domain" {
  description = "The top-level domain to put all Route53 records"
}

# One of these two must be specified

variable "ssh_pri_key_file" {
  description = "File URL to Private SSH key for post provisioning config"
  default     = ""
}

variable "ssh_pri_key_data" {
  description = "Contents of Private SSH key for post provisioning config"
  default     = ""
}

# Optional

# Images in us-east-1, us-east-2, us-west-1 and us-west-2
variable "aws_region" {
  description = "Region into which to deploy"
  default     = "us-west-2"
}

variable "consul_dc" {
  description = "Consul cluster DC name"
  default     = "dc1"
}

# Region to deploy alternate cluster
variable "aws_region_alt" {
  description = "Region into which to deploy"
  default     = "us-east-1"
}

variable "consul_dc_alt" {
  description = "Alternate Consul cluster DC name"
  default     = "dc2"
}

variable "ami_prefix" {
  description = "prefix of AMI images to use when building instances"
  default     = "consul-demo"
}

variable "consul_lic" {
  description = "License file content for Consul Enterprise"
  default     = ""
}

variable "vpc_cidr_main" {
  description = "The netblock for the main VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_cidr_alt" {
  description = "The netblock for the alt VPC"
  default     = "10.128.0.0/16"
}

# variable "server_machine_type" {
#   description = "The machine type (size) to deploy"
#   default     = "t2.micro"
# }


# variable "client_machine_type" {
#   description = "The machine type (size) to deploy"
#   default     = "t2.micro"
# }


# variable "consul_servers_count" {
#   description = "How many Consul servers to create in each region"
#   default     = "3"
# }


# variable "client_db_count" {
#   description = "The number of client machines to create in each region"
#   default     = "1"
# }


# variable "client_product_count" {
#   description = "The number of product machines to create in each region"
#   default     = "2"
# }


# variable "client_listing_count" {
#   description = "The number of listing machines to create in each region"
#   default     = "2"
# }


# variable "client_webclient_count" {
#   description = "The number of webclients to create in each region"
#   default     = "2"
# }


# variable "ami_owner" {
#   description = "AWS account which owns AMIs"
#   default     = "753646501470"                # hc-sc-demos-2018
# }


# variable "vpc_netblock" {
#   description = "The netblock for this deployment's VPC"
#   default     = "10.0.0.0/16"
# }


# variable "internal_netblock" {
#   description = "Global netblock"
#   default     = "10.0.0.0/8"
# }


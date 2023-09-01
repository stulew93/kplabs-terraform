variable "instance_type" {  # "variable default" approach
  type = string
  default = "t2.micro"
}
# Can override default by using -var flag in CLI (or with tfvars file); e.g. terraform plan -var="instance_type=t2.small"

variable "ami" {  # defined using tfvars file.
  type = string
}
# Expected filename is terraform.tfvars - if name is different then needs to be specified with -var-file="input.tfvars"

variable "tags" {  # not defined in code - CLI will ask for value
  type = string
}

# Can also use environment variables

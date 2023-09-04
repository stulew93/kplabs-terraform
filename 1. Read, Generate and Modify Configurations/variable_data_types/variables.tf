variable "elb_name" {
  type = string
}

variable "elb_availability_zones" {
  type = list(string)
}

variable "elb_timeout" {
  type = number
}

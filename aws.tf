provider "aws" {
  region     = "eu-west-2"
  access_key = local.access_key
  secret_key = local.secret_key
}

#resource "aws_instance" "my_first_ec2" {
#  ami = "ami-0f3d9639a5674d559"
#  instance_type = "t2.micro"
#}

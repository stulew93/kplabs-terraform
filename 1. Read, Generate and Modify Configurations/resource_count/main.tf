#resource "aws_instance" "instance-1" {
#  ami = "ami-0f3d9639a5674d559"
#  instance_type = "t2.micro"
#}
#
#resource "aws_instance" "instance-2" {
#  ami = "ami-0f3d9639a5674d559"
#  instance_type = "t2.micro"
#}
#
#resource "aws_instance" "instance-3" {
#  ami = "ami-0f3d9639a5674d559"
#  instance_type = "t2.micro"
#}

resource "aws_instance" "instance" {
  count         = 3
  ami           = "ami-0f3d9639a5674d559"
  instance_type = "t2.micro"
  tags          = { "Name" = "instance-${count.index}" }
}

variable "load_balancer_names" {
  type    = list(string)
  default = ["balancer-dev", "balancer-test", "balancer-prod"]
}

resource "aws_iam_user" "lb" {
  count = 3
  name  = var.load_balancer_names[count.index]
}

resource "aws_instance" "my_first_ec2" {
  ami = "ami-0f3d9639a5674d559"
  instance_type = "t2.micro"
}

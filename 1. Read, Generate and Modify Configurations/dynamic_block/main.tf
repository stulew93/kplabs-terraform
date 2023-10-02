variable "sg_ports" {
  type        = list(number)
  description = "List of ingress ports."
  default     = [8200, 8201, 8300, 9200, 9500]
}

resource "aws_security_group" "demo_sg" {
  name = "sample-sg"

  #  ingress {
  #    from_port   = 8200git
  #    to_port     = 8200
  #    protocol    = "tcp"
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }
  #
  #  ingress {
  #    from_port   = 8201
  #    to_port     = 8201
  #    protocol    = "tcp"
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }
  #
  #  ingress {
  #    from_port   = 8300
  #    to_port     = 8300
  #    protocol    = "tcp"
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }
  #
  #  ingress {
  #    from_port   = 9200
  #    to_port     = 9200
  #    protocol    = "tcp"
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port # iterator defaults to the name of the dynamic block, but can be overridden with the iterator attribute
    content {
      from_port   = port.value  # i.e. here would be ingress.value if iterator name not set to "port" above
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

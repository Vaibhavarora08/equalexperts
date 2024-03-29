resource "aws_security_group" "equalexperts_public" {
  name = "public-jenkins"
  description = "Allows all traffic"
  vpc_id     = "${aws_vpc.equalexperts.id}"

  # SSH
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTPS
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #TCP
  ingress  {
   from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
}

resource "aws_security_group" "equalexperts_private"{

  name = "private-docker"
  description = "Allows all traffic"
  vpc_id     = "${aws_vpc.equalexperts.id}"

# SSH
ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  security_groups = ["sg-0302fea67dc11b377"]
}
ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  security_groups = ["sg-0302fea67dc11b377"]
}
}
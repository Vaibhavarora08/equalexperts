data "template_file" "jenkins" {
  template = "${file("jenkin.tpl")}"
}


resource "aws_instance" "equalexperts_public" {
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.terra_ingress_subnet_az_1.id}"
  ami = "${var.amis}"
  key_name = "${var.key_name}"
  associate_public_ip_address = true
  user_data_base64 = "${base64encode(local.instance-userdata)}"

  tags {
    Name = "${var.equalexperts_public_name}"
  }

}

  data "template_file" "docker" {
    template = "${file("docker.tpl")}"
  }

  resource "aws_instance" "equalexperts_private" {
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.terra_private_subnet_az_1.id}"
    ami = "${var.amis}"
    key_name = "${var.key_name}"
    associate_public_ip_address = true
   

   tags {
      Name = "var.equalexperts_private_name"
    }

}



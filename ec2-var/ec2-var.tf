resource "aws_instance" "demo-ec2" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = var.instance_key
  count         = 3
  tags = {
    "Name"      = "${var.instance_name} - ${count.index}"
    "createdby" = var.instance_creater
  }

}

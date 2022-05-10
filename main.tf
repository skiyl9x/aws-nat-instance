
data "aws_ami" "ami_name" {
  most_recent = true
  owners      = var.owners

  filter {
    name   = "name"
    values = var.image_name
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}

resource "aws_key_pair" "public_ssh_key" {
  key_name   = var.pub_key_name
  public_key = file("${var.pub_key_filename}")
}

resource "aws_instance" "server" {
  ami           = data.aws_ami.ami_name.id
  instance_type = var.inst_type
  key_name      = aws_key_pair.public_ssh_key.key_name
  count         = var.instance_count
  user_data     = var.bash_file
  tags = {
    Name        = "${var.server_name}-${count.index}"
    application = "${var.application_tag}"
  }
  network_interface {
    network_interface_id = var.nic_id[count.index]
    device_index         = 0
  }
}

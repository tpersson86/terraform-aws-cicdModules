resource "aws_instance" "web" {
  count                  = var.num_webs
  ami                    = data.aws_ami.ubuntu_16_04.image_id
  instance_type          = "t2.small"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = "ansible_tower"

  tags = {
    Name = "POC ${count.index + 1}/${var.num_webs}"
  }
}

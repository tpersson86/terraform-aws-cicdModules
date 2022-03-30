data "aws_ami" "ubuntu_16_04" {
  most_recent = true

  filter {
    // name   = "name"
    // values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
    name = "tag:environment"
    values = ["production"]
  }

  filter {
    name = "tag:version"
    values = ["3"]
  }

  owners = ["157252224841"]
}
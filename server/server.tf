resource "aws_instance" "web" {
  count                  = var.num_webs
  ami                    = data.aws_ami.ubuntu_16_04.image_id
  instance_type          = "t2.small"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = "ansible_ssh"

  tags = {
    Name = "POC ${count.index + 1}/${var.num_webs}"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "ansible_ssh"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC52ewj6wF8CFh6yl5afC8A+9I84ZZg+0rteXebzaZwkLS0nBDe1xzZHR8rWuSJdBFysDHcpgMtiXXwYNPdiPoMW2Ew1hX3q9ol3Fb5M3Hm0m66++tav36JEdJeOTYJiwbl4NZoM7mFSNq/1qUpCFuHsM/gI+pz+x2i61uQGS2UBGtKcKSdgUCkneMqoXX4xvpw2RiUf1fx1Zi1rMrqmMNBk6g6Xx5GBwTcqBCUJOoECUEV25jAD5nvYYqBgnLwVzjLYvKJtp+dE1uEzBxVqA5sA4q6/wzMitw2VAQEAqeRkJAMuBSJqn9x8MGwllqKn+yjPvWf14GrkxJHDegjNNKLK8pau2EqrA4M0OKVb96ZigkuHVl0Uh+hyN0J6mwKUALCZBIgU0EPuXKP+8YQLy0hzsmnjOnveYQjUDSI0gyiHPesDF0LVJBCYbHNd5A8iEGf2234K8nj2+1bvy0pazwUunORaMxrPHOo0TlCca98aBeR+XukwXCZwaCZkZsw/LU= tap145@P-IT-HJLDZH3"
}

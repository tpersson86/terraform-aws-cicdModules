variable "subnet_id" {}
variable "vpc_security_group_ids" {
  type = list(any)
}
variable "num_webs" {}
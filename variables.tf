variable "inst_type" {
  description = "Instance type"
  type        = string
}

#variable "vpc_sg_ids" {
#  description = "VPC security group ids in private subnet"
#  type        = list(any)
#}

#variable "vpc_sub" {
#  description = "ID of private subnet"
#  type        = string
#}

variable "instance_count" {
  description = "Number of instances in private subnet"
  type        = number
}

#variable "associate_public_ip_address" {
#  description = "If need public IP - true, else - false"
#  type        = bool
#}

variable "server_name" {
  description = "Name of the server"
  type        = string
}

variable "pub_key_name" {
  description = "Name of public ssh key in AWS"
  type        = string
}

variable "pub_key_filename" {
  description = "Name of file with public ssh key"
  type        = string
}

variable "image_name" {
  description = "Name of AMI"
  type        = list(any)
}

variable "owners" {
  description = "Owner alias of the AMI"
  type        = list(any)
}

variable "bash_file" {
  description = "Path to the bash script that will be used to install software inside ec2 instance"
  type        = string
}

#variable "source_dest_check" {
#  type        = bool
#}

variable "nic_id" {
  type        = list(string)
}

variable "application_tag" {
  type        = string
}
#variable "git_token" {
#  description = "GitHub Token"
#  type        = string
#}

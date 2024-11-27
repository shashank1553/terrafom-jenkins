
variable "instance_ami" {
  description = "mention the ec2 ami"
  type        = string
  default     = "ami-012967cc5a8c9f891"
}

variable "instance_type" {
  description = "mention the ec2 instace family"
  type        = string
  default     = "t2.micro"
}

variable "instance_key" {
  description = "mention the ec2 instace key pair"
  type        = string
  default     = "new-login"
}

variable "instance_name" {
  description = "mention the ec2 instace name"
  type        = string
  default     = "server"
}

variable "instance_creater" {
  description = "mention the ec2 instace creater name"
  type        = string
  default     = "terraform"
}

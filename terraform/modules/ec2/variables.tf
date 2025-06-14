variable "name" {
  type = string
  description = "Name of webserver"
}

variable "environment" {
  type = string
  description = "Environment in which webserver is running"
}

variable "ami" {
  type = string
  description = "AMI of ec2"
}

variable "server_config" {
    type = object({
      instance_type = string
      key_name = string
      region = string
    })
}
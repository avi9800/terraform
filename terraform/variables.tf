variable "name" {
  default = "Webserver"
  type = string
  description = "Name of webserver"
}

variable "environment" {
  default = "Stagging"
  type = string
  description = "Environment in which webserver is running"
}

variable "ami" {
  type = string
  default = "ami-0f918f7e67a3323f0"
  description = "AMI of ec2"
}

variable "server_config" {
    type = object({
      instance_type = string
      key_name = string
      region = string
    })

    default = {
      instance_type = "t2.micro"
      key_name = "terraform"
      region = "ap-south-1"
    }
}
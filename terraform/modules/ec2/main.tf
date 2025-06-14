provider "aws" {
  region = var.server_config.region
}

resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.server_config.instance_type
  key_name = var.server_config.key_name
  tags = {
        Name = var.name
        Environment = var.environment
    }
}
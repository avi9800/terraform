module "ec2" {
    source = "./modules/ec2"
    ami = "ami-0f918f7e67a3323f0"
    name = "Web_server"
    environment = "Development"
    server_config = {
        key_name = "terraform",
        instance_type = "t2.micro"
        region = "ap-south-1"
    }
}


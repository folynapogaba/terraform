provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform-demo" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.nano"
    key_name = "window"
    tags = {
        Name = "Folly"
        Env = "dev"
    }
}

output "public-ip" {
    value = aws_instance.terraform-demo.public_ip
}

output "public-dns" {
    value = aws_instance.terraform-demo.public_dns
}
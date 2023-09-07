provider "aws" {
    region = "eu-north-1"
}


resource "aws_security_group" "web_traffic" {
    name = "allow_tls"
    
    ingress {
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_key_pair" "ssh_key_pair" {
  key_name   = var.key_name
  public_key = file(".ssh/keygen.pub.pub")
}

resource "aws_instance" "my_ec2" {
    ami = var.instance_ami
    instance_type = var.instance_type
    user_data = file("server-script.sh")
    key_name = aws_key_pair.ssh_key_pair.key_name
    security_groups = [aws_security_group.web_traffic.name]

    tags = {
        Name = var.instance_name
    }
}


resource "aws_s3_bucket" "example" {
    bucket = var.bucket_name

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}
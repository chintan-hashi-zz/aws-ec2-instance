terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = "${var.aws_region}"b

  tags = {
    Name = var.name
    Environment = var.env
  }
}

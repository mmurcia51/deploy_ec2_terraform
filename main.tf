
provider "aws" {
 # access_key = var.access_key
 # secret_key = var.secret_key
  region     = "us-east-1"

}

resource "aws_instance" "washington" {
  for_each      = var.service_names
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = module.vpc.public_subnets[0]
  vpc_security_group_ids = [ module.terraform-sg.security_group_id ]
associate_public_ip_address = true

  tags = {
    Name       = "EC2-${each.key}"
    Enviroment = "Produccion"
    Owner      = "mamurcia"

  }
}

resource "aws_cloudwatch_log_group" "ec2_log_group" {
  for_each      = var.service_names

  tags = {
    Service       = each.key
    Enviroment = "Produccion"
    Owner      = "mamurcia"
  }
  lifecycle {
    create_before_destroy = true
  }
}
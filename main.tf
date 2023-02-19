terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA5IQQ7MG7KTOTQHL6"
  secret_key = "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"
  # Configuration options
}

resource "aws_db_instance" "MYRA" {
  allocated_storage    = 80
  db_name              = "myra"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "brontech1"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  tags = {
    Name = "myra"
  }
}


provider "aws" {
    region = "us-east-1"
}


terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.84.0"
      }
    }

    backend "s3" {
    bucket       ="koti-kav"
    key          = "count-bucket"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true


  }
}


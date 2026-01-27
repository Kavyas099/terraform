provider "aws" {
    region = "us-east-1"
}



terraform {
    required_providers {
        aws = {
            source = "Hashicorp/aws"
            version = "5.84.0"
        }
    }

    backend "s3" {
    bucket = "kavyas-remote-state-dev"
    key = "kavyadiv"
    region = "us-east-1"
     use_lockfile   = true
    encrypt        = true
  
}
}
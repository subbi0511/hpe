terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
      }

}


provider "aws" {
  region = "ap-south-1"
}

/*resource "null_resource" "names" {
  count = length(local.names)
  triggers = {
    name = local.names[co]
  }
}
output "simple" {
  value = null_resource.simple
}
*/
resource "aws_vpc" "tf-clud-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terraform-cloud-vpc"
  }
}


resource "aws_subnet" "tf-cloud-subnet" {
  vpc_id     = aws_vpc.tf-clud-vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "Terraform-cloud-subent"
  }
}

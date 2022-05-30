
provider "aws" {
  region = "us-east-2"

}

resource "aws_eip" "this" {
    for_each = { for v in var.environment.inputs.pisicox: v => v}
    vpc = true
}

resource "aws_nat_gateway" "example" {
  for_each = aws_eip.this
  allocation_id = each.value.id
  subnet_id     = each.key

}

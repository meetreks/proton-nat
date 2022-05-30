/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-2:787514071465:environment/jaisai9

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/


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

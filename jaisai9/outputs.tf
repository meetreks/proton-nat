/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-2:787514071465:environment/jaisai9

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "sairam" {
    value = [for x in aws_eip.this : x.id  ]
}

output "sairam9" {
    value = { for x, v in aws_eip.this : x => v.id  }
}

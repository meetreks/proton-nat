output "sairam" {
    value = [for x in aws_eip.this : x.id  ]
}

output "sairam9" {
    value = { for x, v in aws_eip.this : x => v.id  }
}

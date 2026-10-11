variable "user_risks" {
  description = <<EOT
Map of user_risks, attributes below
Required:
    - risk_level
    - user_id
EOT

  type = map(object({
    risk_level = string
    user_id    = string
  }))
}


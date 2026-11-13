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
  validation {
    condition = alltrue([
      for k, v in var.user_risks : (
        contains(["HIGH", "LOW"], v.risk_level)
      )
    ])
    error_message = "must be one of: \"HIGH\", \"LOW\""
  }
}


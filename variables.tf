variable "security_events_providers" {
  description = <<EOT
Map of security_events_providers, attributes below
Required:
    - is_enabled
    - name
    - type
Optional:
    - settings (block):
        - issuer (optional)
        - jwks_url (optional)
        - well_known_url (optional)
EOT

  type = map(object({
    is_enabled = string
    name       = string
    type       = string
    settings = optional(list(object({
      issuer         = optional(string)
      jwks_url       = optional(string)
      well_known_url = optional(string)
    })))
  }))
}


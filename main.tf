resource "okta_security_events_provider" "security_events_providers" {
  for_each = var.security_events_providers

  is_enabled = each.value.is_enabled
  name       = each.value.name
  type       = each.value.type

  dynamic "settings" {
    for_each = each.value.settings != null ? each.value.settings : []
    content {
      issuer         = settings.value.issuer
      jwks_url       = settings.value.jwks_url
      well_known_url = settings.value.well_known_url
    }
  }
}


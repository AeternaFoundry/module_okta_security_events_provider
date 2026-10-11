output "security_events_providers_id" {
  description = "Map of id values across all security_events_providers, keyed the same as var.security_events_providers except keys with no id are omitted"
  value       = { for k, v in okta_security_events_provider.security_events_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_events_providers_is_enabled" {
  description = "Map of is_enabled values across all security_events_providers, keyed the same as var.security_events_providers except keys with no is_enabled are omitted"
  value       = { for k, v in okta_security_events_provider.security_events_providers : k => v.is_enabled if v.is_enabled != null && length(v.is_enabled) > 0 }
}
output "security_events_providers_name" {
  description = "Map of name values across all security_events_providers, keyed the same as var.security_events_providers except keys with no name are omitted"
  value       = { for k, v in okta_security_events_provider.security_events_providers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_events_providers_settings" {
  description = "Map of settings values across all security_events_providers, keyed the same as var.security_events_providers except keys with no settings are omitted"
  value       = { for k, v in okta_security_events_provider.security_events_providers : k => v.settings if v.settings != null && length(v.settings) > 0 }
}
output "security_events_providers_status" {
  description = "Map of status values across all security_events_providers, keyed the same as var.security_events_providers except keys with no status are omitted"
  value       = { for k, v in okta_security_events_provider.security_events_providers : k => v.status if v.status != null && length(v.status) > 0 }
}
output "security_events_providers_type" {
  description = "Map of type values across all security_events_providers, keyed the same as var.security_events_providers except keys with no type are omitted"
  value       = { for k, v in okta_security_events_provider.security_events_providers : k => v.type if v.type != null && length(v.type) > 0 }
}


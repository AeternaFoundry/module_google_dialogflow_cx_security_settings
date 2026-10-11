output "dialogflow_cx_security_settings_id" {
  description = "Map of id values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_security_settings_audio_export_settings" {
  description = "Map of audio_export_settings values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no audio_export_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => one(v.audio_export_settings) if v.audio_export_settings != null && length(v.audio_export_settings) > 0 }
}
output "dialogflow_cx_security_settings_deidentify_template" {
  description = "Map of deidentify_template values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no deidentify_template are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.deidentify_template if v.deidentify_template != null && length(v.deidentify_template) > 0 }
}
output "dialogflow_cx_security_settings_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_cx_security_settings_display_name" {
  description = "Map of display_name values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_cx_security_settings_insights_export_settings" {
  description = "Map of insights_export_settings values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no insights_export_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => one(v.insights_export_settings) if v.insights_export_settings != null && length(v.insights_export_settings) > 0 }
}
output "dialogflow_cx_security_settings_inspect_template" {
  description = "Map of inspect_template values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no inspect_template are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.inspect_template if v.inspect_template != null && length(v.inspect_template) > 0 }
}
output "dialogflow_cx_security_settings_location" {
  description = "Map of location values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no location are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dialogflow_cx_security_settings_name" {
  description = "Map of name values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_security_settings_project" {
  description = "Map of project values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no project are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dialogflow_cx_security_settings_purge_data_types" {
  description = "Map of purge_data_types values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no purge_data_types are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.purge_data_types if v.purge_data_types != null && length(v.purge_data_types) > 0 }
}
output "dialogflow_cx_security_settings_redaction_scope" {
  description = "Map of redaction_scope values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no redaction_scope are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.redaction_scope if v.redaction_scope != null && length(v.redaction_scope) > 0 }
}
output "dialogflow_cx_security_settings_redaction_strategy" {
  description = "Map of redaction_strategy values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no redaction_strategy are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.redaction_strategy if v.redaction_strategy != null && length(v.redaction_strategy) > 0 }
}
output "dialogflow_cx_security_settings_retention_strategy" {
  description = "Map of retention_strategy values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no retention_strategy are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.retention_strategy if v.retention_strategy != null && length(v.retention_strategy) > 0 }
}
output "dialogflow_cx_security_settings_retention_window_days" {
  description = "Map of retention_window_days values across all dialogflow_cx_security_settings, keyed the same as var.dialogflow_cx_security_settings except keys with no retention_window_days are omitted"
  value       = { for k, v in google_dialogflow_cx_security_settings.dialogflow_cx_security_settings : k => v.retention_window_days if v.retention_window_days != null }
}


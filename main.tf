resource "google_dialogflow_cx_security_settings" "dialogflow_cx_security_settings" {
  for_each = var.dialogflow_cx_security_settings

  display_name          = each.value.display_name
  location              = each.value.location
  deidentify_template   = each.value.deidentify_template
  deletion_policy       = each.value.deletion_policy
  inspect_template      = each.value.inspect_template
  project               = each.value.project
  purge_data_types      = each.value.purge_data_types
  redaction_scope       = each.value.redaction_scope
  redaction_strategy    = each.value.redaction_strategy
  retention_strategy    = each.value.retention_strategy
  retention_window_days = each.value.retention_window_days

  dynamic "audio_export_settings" {
    for_each = each.value.audio_export_settings != null ? [each.value.audio_export_settings] : []
    content {
      audio_export_pattern   = audio_export_settings.value.audio_export_pattern
      audio_format           = audio_export_settings.value.audio_format
      enable_audio_redaction = audio_export_settings.value.enable_audio_redaction
      gcs_bucket             = audio_export_settings.value.gcs_bucket
    }
  }

  dynamic "insights_export_settings" {
    for_each = each.value.insights_export_settings != null ? [each.value.insights_export_settings] : []
    content {
      enable_insights_export = insights_export_settings.value.enable_insights_export
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


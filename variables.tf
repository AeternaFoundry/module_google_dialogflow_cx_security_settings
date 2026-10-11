variable "dialogflow_cx_security_settings" {
  description = <<EOT
Map of dialogflow_cx_security_settings, attributes below
Required:
    - display_name
    - location
Optional:
    - deidentify_template
    - deletion_policy
    - inspect_template
    - project
    - purge_data_types
    - redaction_scope
    - redaction_strategy
    - retention_strategy
    - retention_window_days
    - audio_export_settings (block):
        - audio_export_pattern (optional)
        - audio_format (optional)
        - enable_audio_redaction (optional)
        - gcs_bucket (optional)
    - insights_export_settings (block):
        - enable_insights_export (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name          = string
    location              = string
    deidentify_template   = optional(string)
    deletion_policy       = optional(string)
    inspect_template      = optional(string)
    project               = optional(string)
    purge_data_types      = optional(list(string))
    redaction_scope       = optional(string)
    redaction_strategy    = optional(string)
    retention_strategy    = optional(string)
    retention_window_days = optional(number)
    audio_export_settings = optional(object({
      audio_export_pattern   = optional(string)
      audio_format           = optional(string)
      enable_audio_redaction = optional(bool)
      gcs_bucket             = optional(string)
    }))
    insights_export_settings = optional(object({
      enable_insights_export = bool
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


variable "connect_artifacts" {
  description = <<EOT
Map of connect_artifacts, attributes below
Required:
    - cloud
    - content_format
    - display_name
    - environment (block):
        - id (required)
Optional:
    - artifact_file
    - description
EOT

  type = map(object({
    cloud          = string
    content_format = string
    display_name   = string
    artifact_file  = optional(string)
    description    = optional(string)
    environment = object({
      id = string
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


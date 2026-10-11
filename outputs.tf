output "connect_artifacts_id" {
  description = "Map of id values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no id are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connect_artifacts_artifact_file" {
  description = "Map of artifact_file values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no artifact_file are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => v.artifact_file if v.artifact_file != null && length(v.artifact_file) > 0 }
}
output "connect_artifacts_cloud" {
  description = "Map of cloud values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no cloud are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "connect_artifacts_content_format" {
  description = "Map of content_format values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no content_format are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => v.content_format if v.content_format != null && length(v.content_format) > 0 }
}
output "connect_artifacts_description" {
  description = "Map of description values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no description are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "connect_artifacts_display_name" {
  description = "Map of display_name values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no display_name are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "connect_artifacts_environment" {
  description = "Map of environment values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no environment are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "connect_artifacts_status" {
  description = "Map of status values across all connect_artifacts, keyed the same as var.connect_artifacts except keys with no status are omitted"
  value       = { for k, v in confluent_connect_artifact.connect_artifacts : k => v.status if v.status != null && length(v.status) > 0 }
}


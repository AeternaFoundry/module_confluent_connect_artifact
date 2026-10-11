resource "confluent_connect_artifact" "connect_artifacts" {
  for_each = var.connect_artifacts

  cloud          = each.value.cloud
  content_format = each.value.content_format
  display_name   = each.value.display_name
  artifact_file  = each.value.artifact_file
  description    = each.value.description

  environment {
    id = each.value.environment.id
  }
}


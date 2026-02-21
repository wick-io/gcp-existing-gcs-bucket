data "ns_connection" "site" {
  name     = "site"
  contract = "app/gcp/gcs"
  optional = true
}

locals {
  bucket_name = coalesce(var.bucket_name, try(data.ns_connection.site.outputs.artifacts_bucket_name, ""))
}

data "google_storage_bucket" "this" {
  name = local.bucket_name
}

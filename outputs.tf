output "bucket_name" {
  value       = data.google_storage_bucket.this.name
  description = "string ||| The name of the bucket."
}

output "bucket_url" {
  value       = data.google_storage_bucket.this.url
  description = "string ||| The URL of the bucket."
}

output "bucket_project" {
  value       = data.google_storage_bucket.this.project
  description = "string ||| The project that owns the bucket."
}

output "bucket_location" {
  value       = data.google_storage_bucket.this.location
  description = "string ||| The GCP location where this bucket resides."
}


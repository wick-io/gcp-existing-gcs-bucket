variable "bucket_name" {
  type        = string
  description = <<EOF
The name of the existing GCS bucket to import.
The bucket must be in the same project as this Nullstone environment.
EOF
}

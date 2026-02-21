variable "bucket_name" {
  type        = string
  default     = ""
  description = <<EOF
The name of the existing GCS bucket to import.
When empty, the bucket name is resolved from the connected site block.
EOF
}

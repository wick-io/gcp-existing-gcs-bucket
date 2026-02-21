# gcp-existing-gcs-bucket

A Nullstone datastore module that imports an existing GCS bucket so other Nullstone modules can reference it.

## Use Cases

- **Cross-module bucket access** - A GCS bucket created by one module (e.g., `gcp-gcs-site`) needs to be accessed by other apps via `gcp-gcs-access`. Register the bucket as a datastore with this module, then connect your apps to it.
- **Externally managed buckets** - Import a GCS bucket created outside of Nullstone (e.g., via console, CLI, or another IaC tool) into your Nullstone workspace.
- **Shared storage** - Multiple applications need read/write access to the same bucket. Register it once as a datastore, then use `gcp-gcs-access` on each app.

## Variables

| Name | Type | Description |
|------|------|-------------|
| `bucket_name` | `string` | The name of the existing GCS bucket to import |

## Outputs

| Name | Description |
|------|-------------|
| `bucket_name` | The name of the bucket |
| `bucket_url` | The URL of the bucket |
| `bucket_project` | The project that owns the bucket |
| `bucket_location` | The GCP location where the bucket resides |

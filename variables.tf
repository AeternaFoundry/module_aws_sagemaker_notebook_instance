variable "sagemaker_notebook_instances" {
  description = <<EOT
Map of sagemaker_notebook_instances, attributes below
Required:
    - instance_type
    - name
    - role_arn
Optional:
    - additional_code_repositories
    - default_code_repository
    - direct_internet_access
    - kms_key_id
    - lifecycle_config_name
    - platform_identifier
    - region
    - root_access
    - security_groups
    - subnet_id
    - tags
    - tags_all
    - volume_size
    - instance_metadata_service_configuration (block):
        - minimum_instance_metadata_service_version (optional)
EOT

  type = map(object({
    instance_type                = string
    name                         = string
    role_arn                     = string
    additional_code_repositories = optional(set(string))
    default_code_repository      = optional(string)
    direct_internet_access       = optional(string)
    kms_key_id                   = optional(string)
    lifecycle_config_name        = optional(string)
    platform_identifier          = optional(string)
    region                       = optional(string)
    root_access                  = optional(string)
    security_groups              = optional(set(string))
    subnet_id                    = optional(string)
    tags                         = optional(map(string))
    tags_all                     = optional(map(string))
    volume_size                  = optional(number)
    instance_metadata_service_configuration = optional(object({
      minimum_instance_metadata_service_version = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_notebook_instances : (
        v.instance_metadata_service_configuration == null || (v.instance_metadata_service_configuration.minimum_instance_metadata_service_version == null || (contains(["1", "2"], v.instance_metadata_service_configuration.minimum_instance_metadata_service_version)))
      )
    ])
    error_message = "must be one of: 1, 2"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_notebook_instances : (
        v.platform_identifier == null || (can(regex("^(notebook-al1-v1|notebook-al2-v1|notebook-al2-v2|notebook-al2-v3|notebook-al2023-v1)$", v.platform_identifier)))
      )
    ])
    error_message = ""
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


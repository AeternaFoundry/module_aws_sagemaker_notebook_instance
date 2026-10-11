output "sagemaker_notebook_instances_id" {
  description = "Map of id values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_notebook_instances_additional_code_repositories" {
  description = "Map of additional_code_repositories values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.additional_code_repositories if v.additional_code_repositories != null && length(v.additional_code_repositories) > 0 }
}
output "sagemaker_notebook_instances_arn" {
  description = "Map of arn values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_notebook_instances_default_code_repository" {
  description = "Map of default_code_repository values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.default_code_repository if v.default_code_repository != null && length(v.default_code_repository) > 0 }
}
output "sagemaker_notebook_instances_direct_internet_access" {
  description = "Map of direct_internet_access values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.direct_internet_access if v.direct_internet_access != null && length(v.direct_internet_access) > 0 }
}
output "sagemaker_notebook_instances_instance_metadata_service_configuration" {
  description = "Map of instance_metadata_service_configuration values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => one(v.instance_metadata_service_configuration) if v.instance_metadata_service_configuration != null && length(v.instance_metadata_service_configuration) > 0 }
}
output "sagemaker_notebook_instances_instance_type" {
  description = "Map of instance_type values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "sagemaker_notebook_instances_kms_key_id" {
  description = "Map of kms_key_id values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "sagemaker_notebook_instances_lifecycle_config_name" {
  description = "Map of lifecycle_config_name values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.lifecycle_config_name if v.lifecycle_config_name != null && length(v.lifecycle_config_name) > 0 }
}
output "sagemaker_notebook_instances_name" {
  description = "Map of name values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sagemaker_notebook_instances_network_interface_id" {
  description = "Map of network_interface_id values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.network_interface_id if v.network_interface_id != null && length(v.network_interface_id) > 0 }
}
output "sagemaker_notebook_instances_platform_identifier" {
  description = "Map of platform_identifier values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.platform_identifier if v.platform_identifier != null && length(v.platform_identifier) > 0 }
}
output "sagemaker_notebook_instances_region" {
  description = "Map of region values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_notebook_instances_role_arn" {
  description = "Map of role_arn values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "sagemaker_notebook_instances_root_access" {
  description = "Map of root_access values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.root_access if v.root_access != null && length(v.root_access) > 0 }
}
output "sagemaker_notebook_instances_security_groups" {
  description = "Map of security_groups values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "sagemaker_notebook_instances_subnet_id" {
  description = "Map of subnet_id values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "sagemaker_notebook_instances_tags" {
  description = "Map of tags values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_notebook_instances_tags_all" {
  description = "Map of tags_all values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sagemaker_notebook_instances_url" {
  description = "Map of url values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.url if v.url != null && length(v.url) > 0 }
}
output "sagemaker_notebook_instances_volume_size" {
  description = "Map of volume_size values across all sagemaker_notebook_instances, keyed the same as var.sagemaker_notebook_instances"
  value       = { for k, v in aws_sagemaker_notebook_instance.sagemaker_notebook_instances : k => v.volume_size if v.volume_size != null }
}


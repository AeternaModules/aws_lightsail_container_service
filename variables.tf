variable "lightsail_container_services" {
  description = <<EOT
Map of lightsail_container_services, attributes below
Required:
    - name
    - power
    - scale
Optional:
    - is_disabled
    - region
    - tags
    - tags_all
    - private_registry_access (block):
        - ecr_image_puller_role (optional, block):
            - is_active (optional)
    - public_domain_names (block):
        - certificate (required, block):
            - certificate_name (required)
            - domain_names (required)
EOT

  type = map(object({
    name        = string
    power       = string
    scale       = number
    is_disabled = optional(bool)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    private_registry_access = optional(object({
      ecr_image_puller_role = optional(object({
        is_active = optional(bool)
      }))
    }))
    public_domain_names = optional(object({
      certificate = list(object({
        certificate_name = string
        domain_names     = list(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lightsail_container_services : (
        v.public_domain_names == null || (length(v.public_domain_names.certificate) >= 1)
      )
    ])
    error_message = "Each certificate list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lightsail_container_services : (
        v.scale >= 1 && v.scale <= 20
      )
    ])
    error_message = "must be between 1 and 20"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


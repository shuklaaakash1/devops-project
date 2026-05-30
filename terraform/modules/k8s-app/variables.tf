variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "image" {
  description = "Full Docker image with tag"
  type        = string
}

variable "replicas" {
  description = "Number of pod replicas"
  type        = number
  default     = 2
}

variable "app_env" {
  description = "Application environment"
  type        = string
  default     = "production"
}

variable "app_version" {
  description = "Application version string"
  type        = string
  default     = "1.0"
}
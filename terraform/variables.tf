variable "image_tag" {
  description = "Docker image tag to deploy"
  type        = string
  default     = "latest"
}

variable "github_username" {
  description = "GitHub username for GHCR image path"
  type        = string
}

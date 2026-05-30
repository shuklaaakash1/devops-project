terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

# Connect to local Kind cluster
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "kind-devops-showcase"
}

# Call our reusable module
module "devops_app" {
  source = "./modules/k8s-app"

  app_name    = "devops-app"
  image       = "ghcr.io/${var.github_username}/devops-app:${var.image_tag}"
  replicas    = 2
  app_env     = "production"
  app_version = var.image_tag
}
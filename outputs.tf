# ${path.module} is an interpolated string in Terraform, which references the path to the current
# module. In this case, it returns the path to the directory containing the current module.

output "kubeconfig" {
  value       = "${path.module}/kubeconfig"
  description = "The path to the kubeconfig file"
}

output "endpoint" {
  value       = module.gke_auth.endpoint
  description = "Cluster endpoint"
}

output "config_ca" {
  sensitive   = true
  value       = module.gke_auth.ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "token" {
  sensitive   = true
  value       = module.gke_auth.token
  description = "The token value for use with the kubernetes provider."
}
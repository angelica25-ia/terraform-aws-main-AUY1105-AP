output "vpc_id" {
  description = "ID de la VPC"
  value       = module.networking.vpc_id
}

output "public_subnet_id" {
  description = "ID subnet pública"
  value       = module.networking.public_subnet_id
}

output "instance_id" {
  description = "ID de la instancia EC2"
  value       = module.compute.instance_id
}

output "public_ip" {
  description = "IP pública EC2"
  value       = module.compute.public_ip
}

output "bucket_name" {
  description = "Nombre bucket S3"
  value       = module.storage.bucket_name
}
variable "environment" {
  description = "Nombre del entorno"
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
  default     = "terraform-ap-angelica-2026"
}

variable "key_name" {
  description = "Nombre del Key Pair AWS"
  type        = string
  default     = "vockey"
}
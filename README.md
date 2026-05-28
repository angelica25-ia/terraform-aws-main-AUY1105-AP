# Terraform AWS Main Infrastructure

Repositorio principal encargado de orquestar la infraestructura modular desplegada en AWS utilizando Terraform.

---

# Objetivo

Este repositorio centraliza la ejecución e integración de los módulos desacoplados de infraestructura:

- Networking (VPC)
- Compute (EC2)
- Storage (S3)

---

# Arquitectura

El proyecto utiliza módulos remotos versionados desde GitHub mediante Semantic Versioning.

---

# Módulos Utilizados

| Módulo | Versión |
|---|---|
| terraform-aws-vpc-AUY1105-AP | v0.1.0 |
| terraform-aws-ec2-AUY1105-AP | v0.1.0 |
| terraform-aws-s3-AUY1105-AP | v0.1.1 |

---

# Funcionalidades

- Despliegue de infraestructura AWS
- Integración de módulos Terraform
- Versionamiento mediante GitHub Releases
- Uso de módulos remotos reutilizables

---

# Archivos principales

| Archivo | Función |
|---|---|
| provider.tf | Configuración AWS Provider |
| main.tf | Llamado módulos remotos |
| outputs.tf | Outputs infraestructura |
| README.md | Documentación |
| CHANGELOG.md | Historial cambios |

---

# Ejecución

```bash
terraform init
terraform validate
terraform plan
terraform apply

Requisitos
Terraform >= 1.0
AWS Provider >= 5.0
Cuenta AWS Academy/Vocareum

Autor
Angelica Poblete
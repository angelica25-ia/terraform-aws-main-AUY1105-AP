module "networking" {
  source = "git::https://github.com/angelica25-ia/terraform-aws-vpc-AUY1105-AP.git?ref=v0.1.0"

  vpc_cidr                  = "10.0.0.0/16"
  public_subnet_cidr        = "10.0.1.0/24"
  private_subnet_cidr       = "10.0.2.0/24"
  public_availability_zone  = "us-east-1a"
  private_availability_zone = "us-east-1b"

  environment = var.environment
}

module "compute" {
  source = "git::https://github.com/angelica25-ia/terraform-aws-ec2-AUY1105-AP.git?ref=v0.1.0"

  ami_id        = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  subnet_id = module.networking.public_subnet_id
  vpc_id    = module.networking.vpc_id

  key_name = var.key_name
  environment = "dev"
}

module "storage" {
  source = "git::https://github.com/angelica25-ia/terraform-aws-s3-AUY1105-AP.git?ref=v0.1.1"

  bucket_name = var.bucket_name
  environment = "dev"
}
#criação de um modulo vpc
module "dennis-mod-vpc" {
  #de onde ira buscar o modulo 
  source = "terraform-aws-modules/vpc/aws"
  #nome do modulo
  name = var.vpc_name
  #cid-block da vpc
  cidr = "10.0.0.0/16"

  #zona de disponibilidade da vpc
  azs = var.azs
  #subnets publicas
  public_subnets = var.cidr_subnet_public
  private_subnets = var.cidr_subnet_private

  #pode-se user para habilitar ou não o nat-gateway ou a vpn-gateway
  enable_nat_gateway = false
  enable_vpn_gateway = false
  #resolução de dns na instancia 
  enable_dns_hostnames = true
  #uso de tags
  tags = var.labels
}
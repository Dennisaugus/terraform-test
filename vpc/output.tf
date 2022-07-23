#output usado para listar o valor do conteudo após o apply.
output "name_vpc" {
    #valor que será mostrado
    value = module.dennis-mod-vpc.default_vpc_arn
}

#output para exibir ip da subnet publica
output "public_ip" {
value = module.dennis-mod-vpc.public_subnets
}

#output por variavel
output "private_ip" {
  value = var.cidr_subnet_private[0]
}
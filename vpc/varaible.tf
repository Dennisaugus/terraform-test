#recurso para variaveis
variable "vpc_name" {
  #tipo da varaivel
  type = string 
  #caso não passe o parametro "default", apos executar o plan ou apply, o mesmo ira perguntar o valor da varaivel
}

variable "cidr_subnet_public" {
  #variavel do tipo de listagem.
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "cidr_subnet_private" {
  type = list(string)
  default = ["10.0.103.0/24", "10.0.104.0/24"]
}

variable "azs" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "labels" {
 #tipo de variavel usado para mapeamento de valor 
  type = map 
  default = {
     
    "env" = "prod"
    "project" = "vpc"
  }
}
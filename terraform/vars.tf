variable "projectName" {
   default     = "tech-challenge-pos-tech"
 }
 
 variable "clusterName" {
   default     = "TechChallengePosTech"
 }

variable "regionDefault" {
  default = "us-east-1" 
}

variable "db_username" {
  description = "Username for PostgreSQL"
}

variable "db_password" {
  description = "Password for PostgreSQL"
}

variable "db_endpoint" {
  description = "URL do banco de dados PostgreSQL"
}

variable "db_name" {
  description = "Nome do banco de dados PostgreSQL"
}

variable "aws_access_key" {
  description = "ACCESS KEY AWS"
}

variable "aws_secret_key" {
  description = "SECRET ACCESS AWS"
}

variable "docker_hub_image_url" {
  description = "Image the API in Docker Hub"
}

variable "docker_hub_username" {
  description = "Nome de usuário do Docker Hub"
}

variable "docker_hub_password" {
  description = "Senha do Docker Hub"
}

variable "instanceClass" {
  default = "db.t3.micro"
}

variable "storageType" {
  default = "gp3"
}

variable "minStorage" {
  default = "20"
}

variable "maxStorage" {
  default = "30"
}

variable "subnet01" {
   default = "subnet-0090c8560fcfda803"
 }
 
 variable "subnet02" {
   default = "subnet-02ac85d9d06797ab3"
 }
 
 variable "subnet03" {
   default = "subnet-037ffc7ef2877e9b8"
 }
 
 variable "vpcId" {
   default = "vpc-0d9ba8df8db5b97ab"
 }
 
 variable "vpcCIDR" {
   default = "172.31.0.0/16"
 }

 variable "AWSAccount" {
   default     = "211125728576"
 }

 variable "tags" {
   type        = map(string)
   default = {
     App          = "tech-challenge-pos-tech",
     Ambiente     = "Desenvolvimento"
    }
}
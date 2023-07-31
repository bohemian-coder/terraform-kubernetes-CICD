variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "tkcicd-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.1.0.0/16"
}

variable "vpc_azs" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

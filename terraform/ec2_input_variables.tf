# AWS EC2 Instance Type
variable "instance_types" {
  description = "EC2 Instance Types"
  type        = map(string)
  default     = {
    "jenkins-master" = "t2.medium"
    "jenkins-node" = "t2.micro"
    "ansible-controller" = "t2.small"
  }
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key pair associated with EC2 Instance"
  type        = string
  default     = "terraform-key"
}

# AWS EC2 Private Instance Count
variable "private_instance_count" {
  description = "AWS EC2 Private Instances Count"
  type        = number
  default     = 1
}

variable "ami_ids" {
  description = "AMI IDs"
  type        = map(string)
  default = {
    "jenkins-master" = "ami-053b0d53c279acc90"
    "jenkins-node" = "ami-053b0d53c279acc90"
    "ansible-controller" = "ami-053b0d53c279acc90"
  }
}

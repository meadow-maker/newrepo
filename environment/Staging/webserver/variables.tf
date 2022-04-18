
variable "instance_type" {
  default = {
    "prod"    = "t3.medium"
    "staging" = "t3.small"
    "dev"     = "t3.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Group_9"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Prefix
variable "prefix" {
  default     = "group06"
  type        = string
  description = "prefix"
}


# Variable to signal the current environment 
variable "env" {
  default     = "staging"
  type        = string
  description = "Environment"
}

variable "ec2_count" {
  type    = number
  default = "0"
}

variable "my_bastion_cidrs" {
  type        = string
  default     = "10.100.0.0/16"
  description = "Public IP of my Cloud 9 "
}

variable "desired_size" {
  type        = number
  description = "size for ASG"
  default     = 3
}

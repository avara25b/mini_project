variable "name" {
  type        = string
  default     = "mini_project"
}

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnets" {
    type = map(object({
        cidr = string
        az = string
    }))

    default = {
        public_subnet_1 = {
            cidr = "10.0.1.0/24"
            az = "us-east-1a"
        }
        public_subnet_2 = {
            cidr = "10.0.2.0/24"
            az = "us-east-1b"
        }
    }
}

variable "private_subnets" {
    type = map(object({
        cidr = string
        az = string
    }))

    default = {
        private_subnet_1 = {
            cidr = "10.0.3.0/24"
            az = "us-east-1a"
        }
        private_subnet_2 = {
            cidr = "10.0.4.0/24"
            az = "us-east-1b"
        }
    }
}
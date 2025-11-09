variable allocated_storage {
    type = number
    default = 10
}

variable db_name {
    type = string
    default = "mini_project_rds"
}

variable engine {
    type = string
    default = "mysql"
}

variable engine_version {
    type = string
    default = "8.0.42"
}

variable instance_class {
    type = string
    default = "db.t3.micro"
}

variable db_username {
    type = string
}

variable db_password {
    type = string
    sensitive   = true
}

variable parameter_group_name {
    type = string
    default = "default.mysql8.0.42"
}


variable "vpc_security_group_ids" {
  type        = list(string)
  default     = []
}

variable "db_subnet_group_name" {
  type        = string
  default     = null
}

variable "vpc_id" {
    type = string
}
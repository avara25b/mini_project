module "vpc" {
    source = "/Users/andrew/Documents/mini_project/terraform_infra/vpc_module"
}

module "rds" {
    source = "/Users/andrew/Documents/mini_project/terraform_infra/rds_module"
    vpc_id = module.vpc.vpc_id
    db_username = var.db_username
    db_password = var.db_password
}
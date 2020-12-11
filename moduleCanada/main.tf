provider "aws" {
  region = var.region
}

module "documentdb_cluster" {
  source                          = "../"
  engine                          = var.engine
  engine_version                  = var.engine_version
  cluster_name                    = var.cluster_name
  instance_count                  = var.instance_count
  instance_class                  = var.instance_class
  master_username                 = var.master_username
  master_password                 = var.master_password
  availability_zones              = var.availability_zones
  subnet_group_ids                = var.subnet_group_ids
  security_group_ids              = var.security_group_ids
  backup_rentetion_period         = var.backup_rentetion_period
  backup_window                   = var.backup_window
  maintenance_window              = var.maintenance_window
  # enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
}
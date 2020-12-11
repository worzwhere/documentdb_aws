resource "aws_docdb_cluster" "docdbCanada" {
  cluster_identifier      = var.cluster_name
  engine                  = var.engine
  engine_version          = var.engine_version
  master_username         = var.master_username
  master_password         = var.master_password
  backup_retention_period = var.backup_rentetion_period
  preferred_backup_window = var.backup_window
  skip_final_snapshot     = var.skip_final_snapshot
  availability_zones      = var.availability_zones
  vpc_security_group_ids  = var.security_group_ids
  db_subnet_group_name    = aws_docdb_subnet_group.docdbCanada.name
  storage_encrypted       = var.storage_encrypted
  tags                    = var.tags
}

resource "aws_docdb_cluster_instance" "cluster_instances_canada" {
  count                        = var.instance_count
  identifier_prefix            = "${var.cluster_name}-node-"
  cluster_identifier           = aws_docdb_cluster.docdbCanada.id
  instance_class               = var.instance_class
  auto_minor_version_upgrade   = true
  preferred_maintenance_window = var.maintenance_window
}

resource "aws_docdb_subnet_group" "docdbCanada" {
  name        = "${var.cluster_name}-sg"
  subnet_ids  = var.subnet_group_ids
  description = "${var.cluster_name} subnet group"

  tags = {
    Name = "${var.cluster_name}-sg"
  }
}
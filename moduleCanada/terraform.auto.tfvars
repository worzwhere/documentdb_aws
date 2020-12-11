region = "ca-central-1"

cluster_name = "documentdb-cluster-canada-test"

master_username = "admin1"

master_password = "password1"

availability_zones = ["ca-central-1a", "ca-central-1b"]

subnet_group_ids   = ["subnet-4d8ac425", "subnet-f6d2488c"]

security_group_ids = ["sg-053dfe1b5e522d59f"]

backup_rentetion_period = 3

backup_window = "02:00-03:00"

maintenance_window    = "Mon:00:00-Mon:01:00"

instance_class = "db.r5.large"

instance_count = 1

engine = "docdb"

engine_version = "4.0.0"

#enabled_cloudwatch_logs_exports = ["audit", "error"]

tags = {
    Name        = "documentdb"
    Environment = "test"
  }
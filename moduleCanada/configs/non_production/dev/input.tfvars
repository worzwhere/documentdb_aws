region = "ca-central-1"

cluster_name = "documentdb-cluster-canada-test"

master_username = "admin1"

master_password = "password1"

availability_zones = ["ca-central-1a", "ca-central-1b"]

subnet_group_ids   = ["subnet-0d010f671493724f6", "subnet-0b81c36c735e920e5"]

security_group_ids = ["sg-03e4e4277746053d9"]

backup_rentetion_period = 3

backup_window = "02:00-03:00"

maintenance_window    = "Mon:00:00-Mon:01:00"

instance_class = "db.r5.large"

instance_count = 1

engine = "docdb"

engine_version = "4.0.0"

enabled_cloudwatch_logs_exports = ["audit", "error"]

tags = {
    Name        = "documentdb"
    Environment = "test"
  }
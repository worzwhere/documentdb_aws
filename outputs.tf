output "cluster_id" {
  value       = aws_docdb_cluster.docdbCanada.cluster_resource_id
  description = "The cluster ID"
}

output "cluster_arn" {
  value       = aws_docdb_cluster.docdbCanada.arn
  description = "The cluster ARN"
}

output "cluster_members" {
  value       = aws_docdb_cluster.docdbCanada.cluster_members
  description = "List of cluster members"
}

output "cluster_endpoint" {
  value       = aws_docdb_cluster.docdbCanada.endpoint
  description = "Read/Write cluster endpoint URI"
}

output "cluster_reader_endpoint" {
  value       = aws_docdb_cluster.docdbCanada.reader_endpoint
  description = "Read cluster endpoint URI"
}

output "master_username" {
  value       = var.master_username
  description = "The cluster username"
}

output "master_password" {
  value       = var.master_password
  sensitive   = true
  description = "The cluster password"
}
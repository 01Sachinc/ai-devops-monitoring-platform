output "monitoring_instance_ip" {
  value = aws_instance.monitoring_node.public_ip
}

output "vpc_id" {
  value = aws_vpc.ai_devops_vpc.id
}

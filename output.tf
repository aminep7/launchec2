output "instance_ids" {
  description = "ID of the EC2 instance"
  value       = aws_instance.test-terraform[*].id
}
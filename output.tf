#output "instance_public_ip" {
#  description = "Direccion IP publica"
#  value       = aws_instance.washington.public_ip
#}

output "instance_public_ip_add" {
  description = "Direccion IP publica"
  value       = {for service, i in aws_instance.washington :service => i.private_ip}
}


#output "instance_public_ip_arn" {
#  description = "Direccion IP publica"
#  value       = {for service, i in aws_instance.washington :service => i.private_arn}
#}


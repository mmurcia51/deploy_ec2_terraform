variable "instance_type" {
  description = "Tipo instancia EC2"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "ID de la AMI"
  type        = string
  default     = "ami-0230bd60aa48260c6"
}

variable "access_key" {
  description = "access_key"
  type        = string
  sensitive   = true
  default     = "AKIA6CY4IDLETGPOPVH5"
}



variable "secret_key" {
  description = "secret_key"
  type        = string
  sensitive   = true
  default     = "iC0wL8D/ggwN7izPwdm4giQZPbJ6w235yb2rBQWm"
}

variable "service_names" {
  description = "service"
  type        = set(string)
  #sensitive   = true
  #default     = "iC0wL8D/ggwN7izPwdm4giQZPbJ6w235yb2rBQWm"
}
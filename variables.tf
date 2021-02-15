variable "region" {
  type        = string
  description = "The DigitalOcean region."
}

variable "name" {
  type        = string
  description = "Name of the cluster."
  default     = ""
}

variable "ip_range" {
  type        = string
  description = "The range of IP addresses for the VPC in CIDR notation"
  default     = "10.10.0.0/18"
}

variable "vpc_id" {
  type        = string
  description = "Use [Vpc ID], 'create' or 'default'"
  default     = "create"
}

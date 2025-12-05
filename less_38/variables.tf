variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "dos-30-server-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
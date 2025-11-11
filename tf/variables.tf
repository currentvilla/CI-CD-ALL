#PR提出用
variable "ssh_public_key" {
  description = "Public SSH key content to create aws_key_pair"
  type        = string
  default     = ""
}

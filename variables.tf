variable "available_image_count" {
  description = "Available last number of images in ecr"
  type        = number
  default     = 10
}

variable "force_delete" {
  type    = bool
  default = false
}

variable "name" {
  description = "ECR name"
  type        = string
}
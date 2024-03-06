#tfsec:ignore:aws-ecr-enforce-immutable-repository tfsec:ignore:aws-ecr-repository-customer-key
resource "aws_ecr_repository" "repository" {
  name         = var.name
  force_delete = var.force_delete
  image_scanning_configuration {
    scan_on_push = true
  }
  encryption_configuration {
    # Valid values are "AES256" or "KMS".
    # "kms_key" The ARN of the KMS key to use when encryption_type is KMS. If not specified, uses the default AWS managed key for ECR.
    encryption_type = "AES256"
  }
}

resource "aws_ecr_lifecycle_policy" "lifecycle" {
  repository = aws_ecr_repository.repository.name

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Keep last ${var.available_image_count} images",
            "selection": {
                "tagStatus": "any",
                "countType": "imageCountMoreThan",
                "countNumber": ${var.available_image_count}
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}
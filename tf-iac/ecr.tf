resource "aws_ecr_repository" "say-hello-cloud-api" {
  name                 = "say-hello-cloud-api"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

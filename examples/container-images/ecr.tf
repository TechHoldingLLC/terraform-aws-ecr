module "ecr" {
  source                = "../../"
  name                  = "my-ecr-repo"
  available_image_count = "10"
}
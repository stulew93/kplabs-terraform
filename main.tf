module "aws_resources" {
  source = "./modules/aws_resources"
  access_key = local.aws_access_key
  secret_key = local.aws_secret_key
}

module "github_resources" {
  source = "./modules/github_resources"
  token = local.github_token
}

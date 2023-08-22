terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = local.github_token
}

resource "github_repository" "kplabs-terraform" {
  name        = "kplabs-terraform"
  description = "https://www.udemy.com/course/terraform-beginner-to-advanced"

  visibility = "public"
}

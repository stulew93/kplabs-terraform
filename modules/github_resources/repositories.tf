resource "github_repository" "kplabs-terraform" {
  name        = "kplabs-terraform"
  description = "https://www.udemy.com/course/terraform-beginner-to-advanced"

  visibility = "public"

  lifecycle {
    prevent_destroy = true
  }
}

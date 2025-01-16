provider "gitlab" {
  token = var.gitlab_token
  base_url = "https://code.medtronic.com/CAS_SWFW/gitlabpoc/"
  # Configuration options
}


# Create a new GitLab project (repository)
resource "gitlab_project" "example_repo" {
  name        = "example-repo"  # Name of the repository
  description = "This is an example repository created with Terraform"
  visibility_level  = "public"       # Options: private, internal, public
}

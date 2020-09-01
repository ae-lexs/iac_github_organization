provider "github" {
  token        = var.github_token
  organization = "TerraformOrgTest"
}

module "github_repository" {
  source                 = "./modules/github_repository"
  repository_name        = ".github"
  repository_description = "GitHub configuration for the terraform_org_test organization"
  repository_topics      = ["github", "terraform"]
  repository_has_issues  = false
}
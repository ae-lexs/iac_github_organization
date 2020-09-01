resource "github_repository" "github_repository" {
  name        = var.repository_name
  description = var.repository_description

  has_issues   = var.repository_has_issues
  has_projects = false
  has_wiki     = false
  is_template  = false

  allow_merge_commit = false
  allow_squash_merge = var.repository_allow_squash_merge
  allow_rebase_merge = var.repository_allow_rebase_merge

  delete_branch_on_merge = true
  auto_init              = true

  topics = var.repository_topics
}

resource "github_branch_protection" "master_branch_protection" {
  repository     = github_repository.github_repository.name
  branch         = "master"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}

resource "github_issue_label" "blocked_label" {
  repository  = github_repository.github_repository.name
  name        = "BLOCKED :construction:"
  color       = "1a237e"
  description = "Status: Related stuff with Blocked processes"
}

resource "github_issue_label" "bug_label" {
  repository  = github_repository.github_repository.name
  name        = "BUG :fire:"
  color       = "f44336"
  description = "Problem: Related stuff with Bugs"
}

resource "github_issue_label" "enhancement_label" {
  repository  = github_repository.github_repository.name
  name        = "ENHANCEMENT :nail_care:"
  color       = "3f51b5"
  description = "Improvement: Related stuff with Enhancements"
}
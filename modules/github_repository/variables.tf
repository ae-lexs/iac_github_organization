variable "repository_name" {
  description = "Name of the GitHub repository"
  type        = string
}

variable "repository_description" {
  description = "Description of the GitHub repository"
  type        = string
}

variable "repository_topics" {
  description = "Topics of the GitHub repository"
  type        = list(string)
}

variable "repository_has_issues" {
  description = "Enable the issues in the GitHub repository"
  type        = bool
  default     = false
}

variable "repository_allow_squash_merge" {
  description = "Enable squash and merge option in the GitHub repository"
  type        = bool
  default     = true
}

variable "repository_allow_rebase_merge" {
  description = "Enable reabse and merge option in the GitHub repository"
  type        = bool
  default     = false
}
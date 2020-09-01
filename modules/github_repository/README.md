# github_repository

**github_repository** is a **Terraform** module to create a new repositories in a specifi organization.

## Requirements

- [Terraform >= v0.12.28](https://www.terraform.io/downloads.html)

## Installation

### Initialize the project

```sh
terraform init
```

### Install the local modules

```sh
terraform get
```

## Inputs

| Name           | Description       | Type   | Default | Required |
| :---:          | :---:             | :---:  | :---:   | :---:    |
| repository_name | Name of the GitHub repository | string | - | :heavy_check_mark: |
| repository_description | Description of the GitHub repository | string | - | :heavy_check_mark: |
| repository_topics | Topics of the GitHub repository | list(string) | - | :heavy_check_mark: |
| repository_has_issues | Enable the issues in the GitHub repository | bool | false | :x: |
| repository_allow_squash_merge | Enable squash and merge option in the GitHub repository | bool | true | :x: |
| repository_allow_rebase_merge | Enable reabse and merge option in the GitHub repository | bool | false | :x: |

## License

**iac_github_organization** is licensed under [Apache License, Version 2.0](./LICENSE).
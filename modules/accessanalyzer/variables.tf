variable "accessanalyzer_type" {
    description = "Set type to ACCOUNT or ORGANIZATION"
    type = string
    default = "ACCOUNT"
}


#| Field           | Variable Type       | Default | Example CLI Input                   |
#| --------------- | ------------------- | ------- | ----------------------------------- |
#| `account_ids`   | `list(string)`      | `[]`    | `["123", "456"]`                    |
#| `resource_tags` | `list(map(string))` | `[]`    | `[{"Env"="dev"}, {"Team"="Sales"}]` |


variable "accessanalyzer_exclusionaccountids" {
  description = "List of AWS account IDs to exclude from unused access findings"
  type        = list(string)
  default     = []
}

variable "accessanalyzer_exclusionresourcetags" {
  description = "List of tag maps to exclude from unused access findings"
  type        = list(map(string))
  default     = []
}

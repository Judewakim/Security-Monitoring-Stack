variable "enable_cloudtrail" {
  type    = bool
  default = true
}

variable "enable_guardduty" {
  type    = bool
  default = true
}

variable "enable_config" {
  type    = bool
  default = true
}

variable "enable_securityhub" {
  type    = bool
  default = true
}

variable "enable_accessanalyzer" {
  type    = bool
  default = true
}

variable "enable_sns" {
  type    = bool
  default = true
}

#######ACCESS ANALYZER######
variable "accessanalyzer_type" {
    description = "Set type to ACCOUNT or ORGANIZATION"
    type = string
    default = "ACCOUNT"
}

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
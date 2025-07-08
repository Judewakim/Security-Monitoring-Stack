module "cloudtrail" {
  source = "./modules/cloudtrail"
  count  = var.enable_cloudtrail ? 1 : 0
}

module "config" {
  source = "./modules/config"
  count  = var.enable_config ? 1 : 0
}

module "accessanalyzer" {
  source = "./modules/accessanalyzer"
  count  = var.enable_accessanalyzer ? 1 : 0
}

module "guardduty" {
  source = "./modules/guardduty"
  count  = var.enable_guardduty ? 1 : 0
}

module "securityhub" {
  source = "./modules/securityhub"
  count  = var.enable_securityhub ? 1 : 0
}

module "sns" {
  source = "./modules/sns"
  count  = var.enable_sns ? 1 : 0
}


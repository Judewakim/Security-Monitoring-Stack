# IAM Access Analyzer looks for unused IAM permissions in your account/organization.

#Access Analyzer scans IAM, S3, KMS, Lambda, SQS, SNS, Secrets, EFS, StepFunctions, Glue, CodeBuild, ElasticSearch.

resource "aws_accessanalyzer_analyzer" "accessanalyzer-internal" {
  analyzer_name = "amaani-accessanalyzer-internal"
  type = var.accessanalyzer_type //Zone of Trust

  # Internal access $9 / AWS resource / month
  # Unused access $0.2 / IAM user and role / month
  configuration {
    unused_access { //"Flag permissions that haven't been used in x days"
      unused_access_age = 30 //"If they haven’t been used in the last 30 days”
      analysis_rule {
        exclusion { //“Don’t generate findings for these accounts or if they have these tags”
          account_ids = var.accessanalyzer_exclusionaccountids
          resource_tags = var.accessanalyzer_exclusionresourcetags
        }
      }
    }
  }
}



#generate IAM policy based access history
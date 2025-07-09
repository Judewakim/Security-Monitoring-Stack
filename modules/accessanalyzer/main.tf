resource "aws_accessanalyzer_analyzer" "accessanalyzer-external" {
  analyzer_name = "amaani-accessanalyzer-external"
  type          = "ACCOUNT"
}

resource "aws_glue_catalog_database" "org_report_database" {
  name         = var.database_name
  location_uri = "${var.source_data_bucket_id}/"
}

resource "aws_glue_crawler" "org_report_crawler" {
  name          = var.crawler_name
  database_name = aws_glue_catalog_database.org_report_database.name
  role          = var.glue_service_role_name
  s3_target {
    path = "${var.source_data_bucket_id}/"
  }
  schema_change_policy {
    delete_behavior = "LOG"
  }
  configuration = <<EOF
{
  "Version":1.0,
  "Grouping": {
    "TableGroupingPolicy": "CombineCompatibleSchemas"
  }
}
EOF
}
resource "aws_glue_trigger" "org_report_trigger" {
  name = "org-report-trigger"
  type = "ON_DEMAND"
  actions {
    crawler_name = aws_glue_crawler.org_report_crawler.name
  }
}
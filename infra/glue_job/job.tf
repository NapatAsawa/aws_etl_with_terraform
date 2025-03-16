resource "aws_glue_job" "glue-job" {
    number_of_workers   = var.number_of_workers
    name                = var.glue_job_name
    role_arn            = var.glue_service_arn
    description         = "Transfer csv from source to bucket"
    glue_version        = "4.0"
    worker_type         = var.worker_type
    timeout             = var.timeout
    max_retries         = var.max_retries

  command {
    name = "glueetl"
    python_version = 3
    script_location = "s3://${var.code_bucket_id}/script.py"
  }

  default_arguments = {
    "--enable-auto-scaling"                 = "true"
    "--enable-continuous-cloudwatch-log"     = "true"
    "--datalake-formats"                     = "delta"
    "--source-path"                          = "s3://${var.source_data_bucket_id}"
    "--destination-path"                     = "s3://${var.target_data_bucket_id}"
    "--job-name"                             = "tutorial-glue-job"
    "--enable-continuous-log-filter"         = "true"
    "--enable-metrics"                       = "true"
}
}
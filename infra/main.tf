module "s3" {
  source = "./s3"
  source_bucket_name ="source-data-bucket-nont"
  target_bucket_name = "target-data-bucket-nont"
  code_bucket_name = "code-bucket-nont"
  source_file_path = "C:/Users/nontt/Desktop/aws_etl_with_terraform/organizations.csv"
  source_file_key = "organizations.csv"
  code_file_path = "C:/Users/nontt/Desktop/aws_etl_with_terraform/script.py"
  code_file_key = "script.py"
}

module "iam" {
  source = "./iam"
}

module "glue_crawler" {
  source = "./glue_crawler"
  database_name = "org-report"
  crawler_name = "org-crawler"
  source_data_bucket_id = module.s3.source_data_bucket_id
  glue_service_role_name = module.iam.glue_service_role_name
}


module "glue_job" {
  source            = "./glue_job"
  glue_job_name     = "tutorial-glue-job"
  worker_type       = "G.1X"
  number_of_workers = 2
  timeout           = 2880
  max_retries       = 1
  source_data_bucket_id = module.s3.source_data_bucket_id
  target_data_bucket_id = module.s3.target_data_bucket_id
  code_bucket_id = module.s3.code_bucket_id
  glue_service_arn = module.iam.glue_service_arn
}

variable "glue_job_name" {
  description = "The name of the AWS Glue job"
  type        = string
  default     = "tutorial-glue-job"
}


variable "worker_type" {
  description = "The worker type for AWS Glue"
  type        = string
  default     = "G.1X"
}

variable "number_of_workers" {
  description = "The number of workers for AWS Glue"
  type        = number
  default     = 2
}

variable "timeout" {
  description = "Job timeout in minutes"
  type        = number
  default     = 2880
}

variable "max_retries" {
  description = "Maximum number of retries for the job"
  type        = number
  default     = 1
}

variable "code_bucket_id" {
  type        = string
}

variable "source_data_bucket_id" {
  type        = string
}

variable "target_data_bucket_id" {
  type        = string
}

variable "glue_service_arn" {
  type        = string
}


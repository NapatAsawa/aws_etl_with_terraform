variable "source_bucket_name" {
  description = "Name of the source data S3 bucket"
  type        = string
  #default     = "tutorial-source-data-bucket-nont"
}

variable "target_bucket_name" {
  description = "Name of the target data S3 bucket"
  type        = string
  #default     = "tutorial-target-data-bucket-nont"
}

variable "code_bucket_name" {
  description = "Name of the S3 bucket for storing code"
  type        = string
  #default     = "tutorial-code-bucket-nont"
}

variable "source_file_key" {
  description = "Key for the source data file in the S3 bucket"
  type        = string
  #default     = "organizations.csv"
}

variable "source_file_path" {
  description = "Local path of the source data file"
  type        = string
}

variable "code_file_key" {
  description = "Key for the script file in the S3 bucket"
  type        = string
  #default     = "script.py"
}

variable "code_file_path" {
  description = "Local path of the script file"
  type        = string
}

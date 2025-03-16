variable "database_name" {
  description = "Name of the database"
  type        = string
}

variable "crawler_name" {
  description = "Name of glue crawler"
  type        = string
}

variable "source_data_bucket_id" {
  type        = string
}

variable "glue_service_role_name" {
  type        = string
}

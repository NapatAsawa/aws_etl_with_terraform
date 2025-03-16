output "glue_service_role_name" {
  value = aws_iam_role.glue_service_role.name
}


output "glue_service_arn" {
  value = aws_iam_role.glue_service_role.arn
}


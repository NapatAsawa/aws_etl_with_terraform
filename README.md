# **AWS ETL with Terraform**  

## **Prerequisites**  
- An **AWS account**  
- **Terraform** ([Download & Install](https://developer.hashicorp.com/terraform/downloads))  
- **AWS CLI** ([Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html))  

## **Setup & Deployment**  

### **1. Configure AWS Credentials**  
Run the following command to set up your AWS credentials:  

```sh
aws configure
```

### **2. Update Configuration Files**  

Modify the following files to match your environment:  

- **infra/providers.tf**: Update the `shared_credentials_files` value with the path to your AWS credentials file.  
- **infra/main.tf**: Replace `source_file_path` and `code_file_path` with your local file paths.  

### **3. Deploy Resources with Terraform**  

Navigate to the `infra` directory and execute the Terraform commands to create AWS resources (S3 bucket, IAM role, Glue crawler, Glue catalog database, Glue job):  

```sh
cd infra
terraform init  
terraform plan  
terraform apply
```

After applying, Terraform will provision the required AWS resources.  

provider "aws" {
	region = var.aws_region
}

resource "aws_s3_bucket" "backend_s3_bucket" {
	bucket = var.module_bucket_name
	
#Enable versioning on the statefile

	versioning {
		enabled = true
	}
	
#Enable server side encryption (SSE)
	
	server_side_encryption_configuration {
		rule {
			apply_server_side_encryption_by_default {
				sse_algorithm = "AES256" 
					}
			}
		}
#Prevent from accidential deletion
	#lifecycle {
	#	prevent_destroy = true
	#}
}

variable "module_bucket_name" {
	default = "my-bucket-backend-s3-222"
}

variable "aws_region" {
	description = "Provider default aws region"
	default = "ap-south-1"
}
resource "aws_s3_bucket" "backend_s3_bucket" {
	bucket = var.module_bucket_name
	
#Enable versioning on the statefile

	versioning {
		enabled = true
	}
	
#Enable server side encription (SSE)
	
	server_side_encription_configuration {
		rule {
			apply_server_side_encription_by_default {
				sse_algorithm = "AES256" 
					}
			}
		}
#Prevent from accidential deletion
	#lifecycle {
	#	prevent_destroy = true
	#}
}
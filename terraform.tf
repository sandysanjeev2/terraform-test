terraform {
	required_version = "=0.15.2"
	
	backend "s3" {
# Name of s3 bucket for backed
			bucket = "my-bucket-backed-s3-222"
			
# State file path to be saved in bucket 
			key = "terraform.tfstate"
			
#DynamoDb locking table name
			dynamodb_table = "my-dynamo-lock-tabel"
				profile        = ""
				role_arn       = ""
				encrypt = true	
		} 

	required_providers {
		aws = {
		version = "=3.38.0"
		source = "hashicorp/aws"
		}
	}
}
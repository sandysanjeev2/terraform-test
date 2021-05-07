variable "aws_region" {
	description = "Provider default aws region"
	default = "ap-south-1"
}

variable "bucket_name" {
	description = "The name of the Backend S3 Bucket"
	default = "my-bucket-backed-s3-222"
}

variable "dynamodb_table_name" {
	description = "The name of the DynamoDB lock tabel"
	default = "my-dynamo-lock-tabel"
}

variable "dynamodb_hash_key" {
	description = "Hash key can be any random string for hashing"
	default = "LockID"
}
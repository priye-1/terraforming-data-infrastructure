variable "instance_name" {
    description = "Name of the EC2 instance"
    type        = string
    default     = "test_instance"
}

variable "instance_type" {
    description = "The EC2 instance type"
    type        = string
    default     = "t3.micro"
}

variable "instance_ami" {
    description = "The EC2 instance type"
    type        = string
    default     = "ami-065681da47fb4e433"
}

variable "key_name" {
    description = "key name"
    type        = string
    default     = "ssh-keypair"
}

variable "bucket_name" {
    description = "Name of s3 bucke"
    type        = string
    default     = "my-tf-test-bucket-priye"
}
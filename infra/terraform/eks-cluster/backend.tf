terraform {
  backend "s3" {
    bucket         = "todo-tfstate-f406d8"
    key            = "eks-cluster/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "todo-tf-lock"
    encrypt        = true
  }
}

terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket = "dacc-sandpit-tfstate"
      region = "eu-west-2"
      dynamodb_table = "terraform-state"
      key = "app_terraform.tfstate"
      encrypt = true
    }
  }
}

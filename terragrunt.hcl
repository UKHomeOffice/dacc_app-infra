remote_state {
  backend = "s3"
  config = {
    bucket         = "dacc-${get_env("ENVIRONMENT", "sandpit")}-tfstate"
    key            = "app-infra.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "dacc-${get_env("ENVIRONMENT", "sandpit")}-tfstate"
    encrypt        = true
  }
}

terraform {
    backend "s3" {
        key = "terraform/lambda.tfstate"
        region = "ap-northeast-1"
    }
}

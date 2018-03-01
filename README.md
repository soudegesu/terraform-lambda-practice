# terraform-lambda-practice

This is a practicical repository to deploy lambda function using terraform.

## what does this repo do?
* store terraform state file in AWS S3 bucket.
* deploy lambda script with terraform.

## Requirements
* terraform
* awscli(and aws credential)
* python 3.6

## execution
* initialize terraform workspace

```
make workspace
```

* sync remote-state
```
make remote
```

* deploy lambda
```
make deploy
```

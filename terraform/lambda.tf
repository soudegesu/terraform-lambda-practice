#####################################
#Lambda
#####################################
resource "aws_lambda_function" "auth_log_monitoring" {
    filename = "../lambda.zip"
    function_name = "do_something"
    role = "arn:aws:iam::${var.account_id}:role/XXXXXXRole"
    handler = "main.lambda_handler"
    source_code_hash = "${data.archive_file.lambda_zip.output_base64sha256}"
    runtime = "python3.6"
    timeout = 150
}

data "archive_file" "lambda_zip" {
    type = "zip"
    source_dir  = "../workspace"
    output_path = "../lambda.zip"
}

variable "cloudwatch_event_rule_name"  {
  type          = "string"
  description   = "Name of the Cloudwatch event rule"

}

variable "cloudwatch_schedule_expression" {
  type          = "string"
  description   = "Crontab line to be added to lambda scheduler"
  default       = ""
}

variable "cloudwatch_event_target_id" {
  type          = "string"
  description   = "ID of aws_cloudwatch_event_target"
  default       = ""
}

variable "cloudwatch_event_input" {
  type          = "string"
  description   = "(Optional) Valid JSON text passed to the target"
  default       = ""
}

variable "lambda_target_policy" {
  type          = "string"
  description   = "Valid JSON text passed to the target"
  default       = <<EOF
    {
     }
EOF
}

variable "lambda_function_file_name" {
  type          = "string"
  description   = "Zip file with lambda_function"
  default       = "./templates/lambda_function.zip"
}

variable "lambda_target_policy_name" {
  type          = "string"
  description   = "Lambda target policy name"
}

variable "lambda_function_name" {
  type          = "string"
  description   = "Lambda Function name"
}

variable "lambda_function_runtime" {
  type          = "string"
  description   = "Lambda runtime"
  default       = "python2.7"
}

variable "lambda_function_handler" {
  type          = "string"
  description   = "The function in lambda script that will be triggered"
  default       = "handler"
}

variable "lambda_function_timeout" {
  type          = "string"
  description   = "Function time-out"
  default       = 15
}

variable "event_target_role_name" {
  type          = "string"
  description   = "Role name that will be created to Lambda"
  default       = "event_target_role_name"
}

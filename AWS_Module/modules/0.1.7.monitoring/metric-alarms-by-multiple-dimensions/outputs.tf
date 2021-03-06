output "cloudwatch_metric_alarm_multiple_dimensions_arns" {
  description = "List of ARN of the Cloudwatch metric alarms"
  value       = values(aws_cloudwatch_metric_alarm.this)[*].arn
}

output "cloudwatch_metric_alarm_multiple_dimensions_ids" {
  description = "List of ID of the Cloudwatch metric alarms"
  value       = values(aws_cloudwatch_metric_alarm.this)[*].id
}
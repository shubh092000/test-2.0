variable "alarms" {
  description = "List of alarm configurations"
  type        = list(object({
    instance_id   = string
    threshold     = number
    metric_name   = string
    statistics    = string
    dimensions    = map(string)
  }))
}

resource "aws_cloudwatch_metric_alarm" "instance_alarms" {
  count          = length(var.alarms)
  alarm_name     = "InstanceAlarm-${var.alarms[count.index].instance_id}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = "1"
  metric_name        = var.alarms[count.index].metric_name
  namespace          = "AWS/EC2"
  period             = "300"
  statistic          = var.alarms[count.index].statistics
  threshold          = var.alarms[count.index].threshold
  alarm_description  = "Alarm when ${var.alarms[count.index].metric_name} is high"
  actions_enabled = false
  dimensions = var.alarms[count.index].dimensions
}

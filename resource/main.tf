provider "aws" {
  region = "ap-northeast-1 "  # Change this to your desired region
}

resource "aws_cloudwatch_metric_alarm" "instance_metric_alarms" {
  
  
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = local.metric_alarms[count.index].metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.threshold
  alarm_description   = var.alarm_description
  actions_enabled     = false

  dimensions =        var.dimension
    
  
}


provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_cloudwatch_metric_alarm" "EC2-alarm" {
  count = length(local.metric_alarms)
  
  alarm_name          = "InstanceMetricAlarm-${local.metric_alarms[count.index].instance_id}-${local.metric_alarms[count.index].metric_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = local.metric_alarms[count.index].metric_name
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = local.metric_alarms[count.index].statistic
  threshold           = local.metric_alarms[count.index].threshold
  alarm_description  = "Alarm when ${local.metric_alarms[count.index].metric_name} exceeds ${local.metric_alarms[count.index].threshold}%"
  actions_enabled = false

  dimensions = {
    InstanceId = local.metric_alarms[count.index].instance_id
  }
}



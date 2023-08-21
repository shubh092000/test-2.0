# variable "instance_ids-ec2" {
#   default = ["a", "b"]  # Replace with your actual instance IDs
# }

# variable "metrics-ec2" {
#   default = {
#     "CPUUtilization" = { threshold = 80, statistic = "Average" },
#     "NetworkIn"      = { threshold = 1000000, statistic = "Sum" },
#     "NetworkOut"     = { threshold = 500000, statistic = "Maximum" },
#   }
# }

# locals {
#   metric_alarms = flatten([
#     for instance_id in var.instance_ids-ec2 : [
#       for metrics, config in var.metrics-ec2 : {
#         instance_id = instance_id
#         metric_name = metrics
#         threshold   = config.threshold
#         statistic   = config.statistic
#       }
#     ]
#   ])
# }

module "p1_instance_alarms" {
  source = "./resource"  # Adjust the path to point to your p1 project directory

  alarms = [
    {
      instance_id   = "i-1234567890abcdef0"  # Provide instance ID
      threshold     = 95
      metric_name   = "MemoryUtilization"
      statistics    = "Maximum"
      dimensions    = {
        InstanceId = "i-1234567890abcdef0"  # Provide instance ID
      }
    },
    {
      instance_id   = "i-abcdef1234567890"  # Provide instance ID
      threshold     = 90
      metric_name   = "CPUUtilization"
      statistics    = "Average"
      dimensions    = {
        InstanceId = "i-abcdef1234567890"  # Provide instance ID
      }
    }
    # Add more alarm configurations as needed
  ]
}

variable "alarm_name" {
  type =  string
  default = "test"
}

variable "comparison_operator" {
  type =  string
  default = "test"
}

variable "evaluation_periods"{
    type =string
    default = "2"
}

variable "metric_name"{
    type =   string
    default = "CPUtilization"
}

variable "namespace"{
    type =   string
    default = "AWS/EC2"
}


variable "statistic"{
    type =   string
    default = "Average"
}

variable "threshold"{
    type =   string
    default = "90"
}

variable "alarm_description"{
    type =   string
    default = "90"
}

variable "action_enabled"{
    type =   bool
    default = false
}

variable "dimension"{
    type =   map
    default = {}
}
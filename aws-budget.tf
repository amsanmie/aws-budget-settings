provider "aws" {
  region = "us-east-2"
}

resource "aws_budgets_budget" "ec2" {
  name              = "budget-ec2-monthly"
  budget_type       = "COST"
  limit_amount      = "10"
  limit_unit        = "USD"
  time_period_end   = "2022-06-15_00:00"
  time_period_start = "2021-02-23_11:39"
  time_unit         = "MONTHLY"

  cost_filters = {
    Service = "Amazon Elastic Compute Cloud - Compute"
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 10
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["sanmiej@gmail.com"]
  }
}

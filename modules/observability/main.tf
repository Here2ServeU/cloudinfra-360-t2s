# Observability Setup (CloudWatch VPC Flow Logs)
resource "aws_flow_log" "vpc_logs" {
  count = var.enable_vpc_flow_logs ? 1 : 0
  log_destination_type = "cloud-watch-logs"
  vpc_id = aws_vpc.main.id
  traffic_type = "ALL"
  log_group_name = "/aws/vpc/flowlogs/${var.vpc_name}"
  iam_role_arn = aws_iam_role.flow_logs_role.arn
}

resource "aws_iam_role" "flow_logs_role" {
  name = "vpcFlowLogsRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Principal = {
        Service = "vpc-flow-logs.amazonaws.com"
      },
      Effect = "Allow",
      Sid    = ""
    }]
  })
}

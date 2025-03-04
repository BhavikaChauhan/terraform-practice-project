module "app" {
  source          = "../../modules/app"
  environment     = var.environment
  instance_type   = "t4g.medium"
  autoscaling_max = 10
}

module "queue" {
  source = "../../modules/queue"
}

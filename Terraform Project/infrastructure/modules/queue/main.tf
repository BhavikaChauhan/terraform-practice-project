data "terraform_remote_state" "common" {
  backend = "s3"

  config = {
    dynamodb_table = "terraform-locks"
    bucket         = "terraform-tfstate-bucket-bkt"
    encrypt        = true
    key            = "infrastructure/environments/com/ultimate-terraform-folder-structure/common.tfstate"
    region         = "us-east-1"
    role_arn       = "arn:aws:iam::676206927618:role/AssumableAdmin"
  }
}

resource "aws_sqs_queue" "game_scores" {
  name          = "${var.prefix}game-scores"
  delay_seconds = 90
}

resource "aws_sns_topic_subscription" "results_updates_sqs_target" {
  topic_arn = data.terraform_remote_state.common.outputs.sns_game_scores_arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.game_scores.arn
}

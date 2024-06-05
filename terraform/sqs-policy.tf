data "aws_iam_policy_document" "tech_challenge_sqs_role" {
  statement {
    sid     = "STSassumeRole"
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["codebuild.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "tech_challenge_sqs_policy" {
  statement {
    sid    = "TechChallengeSQSStatement"
    effect = "Allow"
    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.solicitacao_pedido_queue.arn,
      aws_sqs_queue.pagamento_pendente_queue.arn,
      aws_sqs_queue.pagamento_confirmado_queue.arn,
      aws_sqs_queue.pedido_confirmado_queue.arn
    ]
  }
}

resource "aws_iam_role" "tech_challenge_sqs_role" {
  name               = "SQS-${var.projectName}-role"
  assume_role_policy = data.aws_iam_policy_document.tech_challenge_sqs_role.json
}

resource "aws_iam_policy" "tech_challenge_sqs_policy" {
  name        = "SQS-${var.projectName}-policy"
  description = "Attach this policy for SQS queue"
  policy      = data.aws_iam_policy_document.tech_challenge_sqs_policy.json
}

resource "aws_iam_role_policy_attachment" "tech_challenge_sqs_policy_attachment" {
  role       = aws_iam_role.tech_challenge_sqs_role.name
  policy_arn = aws_iam_policy.tech_challenge_sqs_policy.arn
}
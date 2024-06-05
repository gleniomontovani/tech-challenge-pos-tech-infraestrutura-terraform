resource "aws_sqs_queue" "solicitacao_pedido_queue" {
  name                       = var.queue_solicitacao_pedido
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}

resource "aws_sqs_queue" "pagamento_pendente_queue" {
  name                       = var.queue_pagamento_pendente
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}

resource "aws_sqs_queue" "pagamento_confirmado_queue" {
  name                       = var.queue_pagamento_confirmado
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}

resource "aws_sqs_queue" "pedido_confirmado_queue" {
  name                       = var.queue_pedido_confirmado
  delay_seconds              = 10
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true
}
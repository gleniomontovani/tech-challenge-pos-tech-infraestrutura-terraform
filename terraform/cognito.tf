locals {
  required_attributes     = ["name", "profile", "email"]
  non_required_attributes = ["groups"]
}


resource "aws_cognito_user_pool" "user_pool" {
  name                = "fiap"
  username_attributes = ["email"]

  dynamic "schema" {
    for_each = local.required_attributes
    content {
      attribute_data_type      = "String"
      developer_only_attribute = false
      mutable                  = true
      name                     = schema.value
      required                 = true
      string_attribute_constraints {
        max_length = 2048
        min_length = 0
      }
    }
  }
  dynamic "schema" {
    for_each = local.non_required_attributes
    content {
      attribute_data_type      = "String"
      developer_only_attribute = false
      mutable                  = true
      name                     = schema.value
      required                 = false
      string_attribute_constraints {
        max_length = 2048
        min_length = 0
      }
    }
  }
}

resource "aws_cognito_user_pool_client" "client" {
  user_pool_id = aws_cognito_user_pool.user_pool.id
  supported_identity_providers = ["COGNITO"]

  name            = "fiap_user"
  generate_secret = true

  access_token_validity = 1
  explicit_auth_flows   = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_USER_PASSWORD_AUTH"]
  allowed_oauth_scopes  = ["fiap/postech/techchallenge"]
  allowed_oauth_flows   = ["client_credentials"]

  callback_urls = ["https://example.com/"]

  depends_on = [
    aws_cognito_resource_server.resource_server_name
  ]
}

resource "aws_cognito_user_pool_domain" "fiapgp68" {
  domain       = "fiapgp68"
  user_pool_id = aws_cognito_user_pool.user_pool.id
}

resource "aws_cognito_resource_server" "resource_server_name" {
  identifier = "fiap/postech"
  name       = "fiappostech"
  user_pool_id = aws_cognito_user_pool.user_pool.id

  scope {
    scope_name        = "techchallenge"
    scope_description = "fiap/postech/techchallenge"
  }
}

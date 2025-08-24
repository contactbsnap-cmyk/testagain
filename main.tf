terraform{
  required_providers{
  auth0={
  source="autho/auth0"
  version=1.23.1"
  }
  }
  backend 'gcs'{
  bucket="terraform-state-cluster"
  prefix="auth0/auth0_client_spa_v2"
  }
  provider 'auth0'
  {
  domain=var.domain
  client_id=var.clientid
  client_secret=var.clientsecret
  }
  module "autho_client"{
source="git::https://github/_git/auth0-terraform/modules/auth0"
name=
app_type=
description=
is_first_party=
oidc_conformant=
grant_types=
client_metadata=
}
  }

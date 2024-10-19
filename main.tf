module "route53" {

  source  = "dasmeta/modules/aws//modules/route53"
  version = "0.21.17"

  zone = "llabs.com.br"
  records = [
    {
      name  = "appfront.llabs.com.br"
      type  = "A"
      value = ["10.60.0.10"] # Registro Removido
    },
    {
      name  = "appback.llabs.com.br"
      type  = "A"
      value = ["10.60.0.20"] # Registro Removido
    },
    {
      name  = "rdsdb.llabs.com.br"
      type  = "A"
      value = ["10.60.0.30"] # Registro Removido
    }
  ]
  ttl = "30"
}
module "route53" {

  source  = "dasmeta/modules/aws//modules/route53"
  version = "0.21.17"

  zone = "good.tec.br"
  records = [
    {
      name  = "appfront.good.tec.br"
      type  = "CNAME"
      value = ["alb-ecs-llabs-appfront-prd-1220206133.us-east-1.elb.amazonaws.com"]
    },
    {
      name  = "appback.good.tec.br"
      type  = "CNAME"
      value = ["alb-ecs-llabs-appback-prd-419421043.us-east-1.elb.amazonaws.com"]
    },
    {
      name  = "llabsdb.good.tec.br"
      type  = "CNAME"
      value = ["llabsdbmsqlv1.cj0iow28m1f5.us-east-1.rds.amazonaws.com"]
    }
  ]
  ttl = "30"
}
resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "https://catalogue-dev.devops86.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "https://user-dev.devops86.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "https://cart-dev.devops86.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "https://payment-dev.devops86.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "https://shipping-dev.devops86.store:8080/", type = "String" },

    {name="roboshop.dev.cart.redis_host",value="redis-dev.devops86.store",type="String"},
    {name="roboshop.dev.cart.catalogue_host",value="catalogue-dev.devops86.store",type="String"},
    {name="roboshop.dev.cart.catalogue_port",value="8080",type="String"},

    {name="roboshop.dev.catalogue.mongo",value="true",type="String"},
    {name="roboshop.dev.catalogue.mongo_url",value="mongodb://mongodb-dev.devops86.store:27017/catalogue",type="String"},

    {name="roboshop.dev.payment.cart_host",value="cart-dev.devops86.store",type="String"},
    {name="roboshop.dev.payment.cart_port",value="8080",type="String"},
    {name="roboshop.dev.payment.user_host",value="user-dev.devops86.store",type="String"},
    {name="roboshop.dev.payment.user_port",value="8080",type="String"},
    {name="roboshop.dev.payment.amqp_host",value="rabbitmq-dev.devops86.store",type="String"},
    {name="roboshop.dev.payment.amqp_user",value="roboshop",type="String"},
    {name="roboshop.dev.payment.amqp_pass",value="roboshop123",type="SecureString"},

    {name="roboshop.dev.shipping.cart_endpoint",value="cart-dev.devops86.store:8080",type="String"},
    {name="roboshop.dev.shipping.db_host",value="mysql-dev.devops86.store",type="String"},

    {name="roboshop.dev.user.mongo",value="true",type="String"},
    {name="roboshop.dev.user.redis_host",value="redis-dev.devops86.store",type="String"},
    {name="roboshop.dev.user.mongo_url",value="mongodb://mongodb-dev.devops86.store:27017/users",type="String"}
  ]
}

resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    {name="roboshop.frontend.catalogue_url",value="https://catalogue-dev.devops86.store",type="String"},
    {name="roboshop.frontend.user_url",value="https://user-dev.devops86.store",type="String"},
    {name="roboshop.frontend.cart_url",value="https://cart-dev.devops86.store",type="String"},
    {name="roboshop.frontend.payment_url",value="https://payment-dev.devops86.store",type="String"},
    {name="roboshop.frontend.shipping_url",value="https://shipping-dev.devops86.store",type="String"},
  ]
}

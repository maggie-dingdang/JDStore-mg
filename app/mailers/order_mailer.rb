class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order  = order
    @user = order.user
    @product_lists =@order.product_lists

    mail(to: @user.email, subject: "【海盗学院】感谢您完成本次的下单，以下是您这次购物明细 #{order.token}")
  end

  def apply_cancel(order)
    @order = order
    @user = @order.user
    @product_lists = order.product_lists
# TODO: change admin@test.com email
    mail(to: "admin@test.com", subject: "【海盗学院】用户#{order.user.email}申请取消订单 #{order.token} ")
  end
end

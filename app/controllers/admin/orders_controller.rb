class Admin::OrdersController < ApplicationController

  def index
    if params[:name].present?
      member = Member.find(params[:name])
      @orders = member.orders.page(params[:page]).per(14)
    else
      @orders = Order.page(params[:page]).per(14)
    end
  end

  def show
    @order = Order.find(params[:id])
    @order_products = @order.order_products
  end

  def update
    @order = Order.find(params[:id])
    @order_products = @order.order_products
    @order.update(order_params)
		if @order.received_status == "入金確認"
		   @order_products.update_all(production_status:1)
		end
		   redirect_to request.referer

  end

  private

    def order_params
      params.require(:order).permit(:received_status)
    end

end

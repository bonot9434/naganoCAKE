class Members::OrdersController < ApplicationController
  
  def new
    @member = Member.find(current_member.id)
  end
  
  def info
    @member = Member.find(current_member.id)
    @cart_products = @member.cart_products.all
    @payment = params[:payment_method] == "0" ? 0 : 1
    if params[:destination] == "0"
      @postal_code = @member.postal_code
      @address = @member.address
      @name = @member.last_name + @member.first_name
    elsif params[:destination] == "1"
      @destination = Destination.find(params[:destinations])
      @postal_code = @destination.postal_code
      @address = @destination.address
      @name = @destination.name
    else
      @postal_code = "[新規登録]"
    end
    @order = Order.new
    @order_product = OrderProduct.new
  end
  
  def create
    order = current_member.order.new(order_params)
    member = Member.find(current_member.id)
    cart_products = member.cart_products.all
    cart_products.each do |cart_product|
      
    end
    order_product = current_member.order_product.new(order_product_params)
    order.save
    order_product.save
    redirect_to orders_thanks_path
  end
  
  def thanks
  end
  
  def index
  end
  
  def show
  end
  
private

  def order_params
    params.require(:order).permit(:postal_code, :address, :name, :potage, :total_price, :payment_method, :received_status)
  end
  
  def order_product_params
    params.require(:order_product).permit(:subtotal_price, :quantity, :production_status)
  end
  
end

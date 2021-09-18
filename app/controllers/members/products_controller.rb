class Members::ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @cart_product = CartProduct.new
  end







   private
     def product_params
       params.require(:product).permit(:image, :name, :introduction, :price, :is_active, :genre_id)
     end

end
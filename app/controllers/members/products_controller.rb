class Members::ProductsController < ApplicationController
  def index
    @products = Product.all
    @genres = Genre.all
  end

  def show
    @product = Product.find(params[:id])
    @cart_product = CartProduct.new
    @genres = Genre.all
  end







   private
     def product_params
       params.require(:product).permit(:image, :name, :introduction, :price, :is_active, :genre_id)
     end


end
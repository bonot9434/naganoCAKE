class Members::CartProductsController < ApplicationController
    $tax_rate = 1.08 #税率のグローバル変数
    def index
        @member = Member.find(current_member.id)
        @cart_products = @member.cart_products.all
    end
    
    def update
        @cart_product = CartProduct.find(params[:id])
        @cart_product.update(cart_product_params)
        redirect_to cart_products_path
        # @member = Member.find(current_member.id)
        # @cart_products = @member.cart_products.all
        # render :index
    end
    
    def create
        @product = Product.find(params[:product_id])
        cart_product = current_member.cart_product.new(cart_product_params)
        cart_product.product_id = @product.id
        cart_product.save
    end
    
    def destroy
        @cart_product = CartProduct.find(params[:id])
        @cart_product.destroy
        redirect_to cart_products_path
    end
    
    def destroy_all
        @cart_products = CartProduct.find(current_member.id)
        @cart_products.destroy
        redirect_to products_path
    end
    
private
    
    def cart_product_params
        params.require(:cart_product).permit(:quantity)
    end
end

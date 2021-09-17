class Members::CartProductsController < ApplicationController
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
        cart_product = current_member.cart_products.new(cart_product_params)
        cart_product.product_id = @product.id
        cart_product.save
        render products_path(@prduct)
    end
    
    def destroy
        @cart_product = CartProduct.find(params[:id])
        @cart_product.destroy
        redirect_to cart_products_path
    end
    
    def destroy_all
        @member = Member.find(current_member.id)
        @cart_products = @member.cart_products.all
        @cart_products.each do |cart_product|
            cart_product.destroy
        end
        redirect_to products_path
    end
    
private
    
    def cart_product_params
        params.require(:cart_product).permit(:quantity,:product_id)
    end
end

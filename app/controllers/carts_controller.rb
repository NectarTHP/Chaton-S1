class CartsController < ApplicationController
  def show
    @cart = Cart.find_by(user_id: current_user)
    @line_items = LineItem.where(cart_id: @cart)
    @products = []
    @line_items.each do |line_item|
      @products << Product.find(line_item.product_id)
      end
      puts @products
  end

  def edit
  end

  def update
  end

  def destroy
    
  end
end

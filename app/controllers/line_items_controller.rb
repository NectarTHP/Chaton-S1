class LineItemsController < ApplicationController
  def index
  end

  def new
    puts "$"*60; puts "line_items#new called"
    product_id = params[:format]
    puts "product_id: "
    puts product_id
    quantity = 1
    puts "quantity: "
    puts quantity
    cart = Cart.all.find_by(user_id: current_user.id)
    puts "cart"
    puts cart
    cart_id = cart.id
    puts "cart_id"
    puts cart_id
    LineItem.create(cart_id: cart_id, product_id: product_id, quantity: quantity)
    redirect_to cart_path(current_user.id)
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

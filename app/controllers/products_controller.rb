class ProductsController < ApplicationController
  def index
    puts "$"*60;puts "product_controller#index"
    @products = Product.all
  end

  def show
    puts "$"*60;puts "product_controller#show"
    puts params
    puts params[:id]
    @product = Product.all.find(params[:id])
    puts "$"*60;puts "@products"
    puts @product
  end
end

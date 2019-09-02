class HomeController < ApplicationController
  def index
    puts '$'*60; puts "'home_controller#index' has been called"; puts '$'*60
    #@item_array = Item.all
  end
end
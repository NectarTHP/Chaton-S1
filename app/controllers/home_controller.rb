class HomeController < ApplicationController
  def index
    @user = current_user
    puts '$'*60; puts "'home_controller#index' has been called"; puts '$'*60
    #@item_array = Item.all
  end

  

  def is_connected?(user)
    if current_user == user
      return true
    end
    false
  end

end
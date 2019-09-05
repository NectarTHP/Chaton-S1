class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :is_logged_user

  puts '$'*60; puts "'users_controller' has been called"; puts '$'*60

  def index
    puts '$'*60; puts "'users#index' has been called";puts '$'*60
    @users = User.all
  end

  def show
    puts '$'*60; puts "'users#show' has been called"; puts '$'*60
    @user = current_user
    # Change that, according to our mentor: 
    # unless is_connected?(@user)
    #   flash[:alert] = "Restricted access."
    #   redirect_to root_path
    # end
  end

  private

  def authenticate_user
    puts '$'*60; puts "users_controller#authenticate_user' has been called"; puts '$'*60
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to root_path
    end
  end

    def is_logged_user
      puts '$'*60; puts "users_controller#is_logged_user' has been called"; puts '$'*60
      unless current_user.id == params[:id].to_i
        flash[:danger] = "You can only visit your profile."
        redirect_to root_path
      end
  end
  
<<<<<<< HEAD
    def is_connected?(user)
      if current_user == user
       return true
     end
     false
   end
=======
  def is_connected?(user)
    if current_user == user
      return true
    end
    false
  end
>>>>>>> c3b7f988a9ea103bdc85be37ea8807fde467f9c4

end

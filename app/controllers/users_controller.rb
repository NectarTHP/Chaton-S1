class UsersController < ApplicationController

 before_action :authenticate_user
 before_action :is_logged_user

 puts '$'*60; puts "'users_controller' has been called"; puts '$'*60

  def index
  end

  def show
    @user = current_user
    @user_events = User.find(params[:id]).event_admin
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

end

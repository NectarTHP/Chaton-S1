class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  after_create :create_cart


  puts "$"*60;puts "user.rb called";puts "$"*60

  has_one_attached :avatar #This is for active storage, to use an avatar picture.

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # after_create :welcome_send
  has_many :orders
  
   def welcome_send
     UserMailer.welcome_email(self).deliver_now
  end

  def create_cart
    puts self
    puts self.id
    Cart.create!(user_id: self.id)
  end

end


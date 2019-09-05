class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar #This is for active storage, to use an avatar picture.

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # after_create :welcome_send
  has_many :orders
  
   def welcome_send
     UserMailer.welcome_email(self).deliver_now
  end

end


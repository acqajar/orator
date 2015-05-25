class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    # destroy page if no user
	has_many :pages, dependent: :destroy
	#create polymorphic association
	has_many :images, as: :imageable, dependent: :destroy
	has_many :pages



end

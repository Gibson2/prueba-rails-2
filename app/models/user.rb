class User < ApplicationRecord
  validates :name, :photo, presence: true
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	has_many :todos
	has_many :tasks, through: :todos
    
 
	
end

class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  devise :database_authenticatable, #:registerable,
         #:recoverable, :rememberable, :trackable, :validatable
         :rememberable, :trackable, :validatable

end

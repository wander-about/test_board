class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #dependent: :destroy 의미를 모름
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end

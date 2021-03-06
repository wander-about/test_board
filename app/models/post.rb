class Post < ApplicationRecord
  # REVIEW : 3 => validates
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :post_likes, dependent: :destroy
  has_many :users, through: :post_likes

  mount_uploader :image, ImageUploader
end

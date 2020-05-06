class Story < ApplicationRecord
  belongs_to :post
  has_many :articles
  mount_uploader :image, ImageUploader
  # accepts_nested_attributes_for :post

end

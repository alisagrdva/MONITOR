class Article < ApplicationRecord
  belongs_to :story
  mount_uploader :image, ImageUploader
end

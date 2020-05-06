class Event < ApplicationRecord
  belongs_to :topic
  has_many :posts
  mount_uploader :image, ImageUploader
  validates :topic_id, presence: true
end

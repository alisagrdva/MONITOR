class Topic < ApplicationRecord
  has_many :events
  has_many :posts
end

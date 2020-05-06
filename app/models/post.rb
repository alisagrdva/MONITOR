class Post < ApplicationRecord
  belongs_to :topic
  belongs_to :event
  has_many :stories
  accepts_nested_attributes_for :stories

  def stories_for_form
    collection = stories.where(post_id: id)
    collection.any? ? collection : stories.build
  end

  def next
    Story.where("id > ?", id).order(id: :asc).limit(1).first
  end

  def prev
    Story.where("id < ?", id).order(id: :desc).limit(1).first
  end
  
end

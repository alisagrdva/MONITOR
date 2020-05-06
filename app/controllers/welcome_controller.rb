class WelcomeController < ApplicationController
  def index
    @topics = Topic.all
    @events = Event.all
    @posts = Post.all
  end
end

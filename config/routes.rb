Rails.application.routes.draw do
  resources :insta_posts
  resources :insta_tags
  resources :insta_accounts
  resources :moniitors
  resources :articles
  resources :stories
  resources :posts
  resources :events
  resources :topics
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

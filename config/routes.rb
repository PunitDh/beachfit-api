Rails.application.routes.draw do
  resources :plans
  resources :items
  resources :posts
  resources :pricings
  resources :faqs
  resources :blogs
  devise_for :users
  # root to: "/"
  # get ""
end

Rails.application.routes.draw do
  
  get 's3/direct_post'
  devise_for :users, controllers: { sessions: 'users/sessions', passwords: 'passwords/passwords' }

  resources :pricings do
    resources :plans
    resources :passes
  end
  
  resources :faqs do
    resources :items
  end

  resources :blogs do
    resources :posts
  end

  resources :testimonials

  get "/testimonials/sample/:number", to: "testimonials#sample"


  get "/blogs/1/featured-posts", to: "posts#featured"

end

end



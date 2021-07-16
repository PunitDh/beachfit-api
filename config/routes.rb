Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

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
end
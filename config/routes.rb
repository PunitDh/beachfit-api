Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', passwords: 'passwords/passwords' }

  # Pricing options plans and passes for Admin
  resources :pricings do
    resources :plans
    resources :passes
  end
  
  # FAQs and items for Admin
  resources :faqs do
    resources :items
  end

  #Blogs and blog posts for Admin
  resources :blogs do
    resources :posts
  end

  # testimonials for Admin
  resources :testimonials

  # random testimonials featured on homepage
  get "/testimonials/sample/:number", to: "testimonials#sample"

  # featured blog post at top of page
  get "/blogs/1/featured-posts", to: "posts#featured"

  # settings page for Admin 
  get "/settings", to: "settings#show"

  patch "/settings", to: "settings#update"

end






Terrabean::Application.routes.draw do
  
  root :to => 'public#index'
  match '/tos' => 'public#tos', :as => 'tos'
  
  #CRUD Resources
  resources :subscriptions
  
  match '/subscription_confirmation' => 'subscriptions#subscription_confirmation', :as => 'subscription_confirmation'
  
  namespace :admin do
    root :to => 'dashboard#index'
    resources :subscriptions
    resources :blog_posts
  end
  
end

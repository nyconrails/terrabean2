Terrabean::Application.routes.draw do
  
  root :to => 'public#index'
  match '/tos' => 'public#tos', :as => 'tos'
  
  #CRUD Resources
  resources :subscriptions
  
  match '/subscription_confirmation' => 'subscriptions#subscription_confirmation', :as => 'subscription_confirmation'
  
end

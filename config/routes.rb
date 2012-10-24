Terrabean::Application.routes.draw do
  
  root :to => 'public#index'
  
  #CRUD Resources
  resources :subscriptions
  
  match '/subscription_confirmation' => 'subscriptions#subscription_confirmation', :as => 'subscription_confirmation'
  
end

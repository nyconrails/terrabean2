Terrabean::Application.routes.draw do
  
  root :to => 'public#index'
  
  #CRUD Resources
  resources :subscriptions
  
end

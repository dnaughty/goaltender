Rails.application.routes.draw do
  
  resources :goals do
  	resources :tasks
  end


end

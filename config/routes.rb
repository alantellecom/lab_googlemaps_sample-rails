Rails.application.routes.draw do
  root 'routers#index'
  resources :routers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :posts, only: [:new, :show, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

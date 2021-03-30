Rails.application.routes.draw do
  resources :posts
  get '/posts/new', to: 'posts#new', as: 'create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

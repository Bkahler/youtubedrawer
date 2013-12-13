Tubedrawers::Application.routes.draw do
  root to: 'tubes#index'
  resources :tubes

  get '/search' => 'tubes#search'
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
end

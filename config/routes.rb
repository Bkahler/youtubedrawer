Tubedrawers::Application.routes.draw do
  root to: 'tubes#index'
  resources :tubes

  get '/search' => 'tubes#search'
  post '/addTo' => 'tubes#addtoPlaylist'
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
end

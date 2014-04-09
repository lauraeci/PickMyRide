Pickmyride::Application.routes.draw do

  resource :edmund
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  match "/*path" => 'welcome#index', via: [:get]

end

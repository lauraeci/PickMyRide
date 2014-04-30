PickMyRide::Application.routes.draw do

  resource :edmund
  resource :choices
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  get 'api', to: 'api#sync'

  match "/*path" => 'welcome#index', via: [:get]

end

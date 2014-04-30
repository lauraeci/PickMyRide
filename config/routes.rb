PickMyRide::Application.routes.draw do

  resource :edmund
  resource :choices
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  resources :api do
    get 'sync'
  end

  match "/*path" => 'welcome#index', via: [:get]

end

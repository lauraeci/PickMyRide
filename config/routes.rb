PickMyRide::Application.routes.draw do

  resource :choices
  resources :makes, only: [:index, :show] do
    resources :models, only: [:index, :show] do
      resources :years, only: [:index, :show]
    end
  end
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  get 'api', to: 'api#sync'

  match "/*path" => 'welcome#index', via: [:get]

end

Pickmyride::Application.routes.draw do

  resource :edmund
  root 'welcome#index'
  get 'welcome', to: "welcome#index"

end

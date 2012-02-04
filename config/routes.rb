JacobDingus::Application.routes.draw do
  resources :contact_emails

  get "mainsite/index"
  get "mainsite/webume"
  get "mainsite/useful_links"
  get "mainsite/about_me"
  
  root :to => 'mainsite#index'

  get "mainsite/StopSOPA"
  # See how all your routes lay out with "rake routes"
end

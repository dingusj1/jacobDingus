JacobDingus::Application.routes.draw do
  get "mainsite/index"
  get "mainsite/webume"
  
  root :to => 'mainsite#index'

  # See how all your routes lay out with "rake routes"
end

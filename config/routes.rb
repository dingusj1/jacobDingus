JacobDingus::Application.routes.draw do
  get "mainsite/index"
  get "mainsite/webume"
  get "mainsite/contactPage"
  post "mainsite/send_mail"
  post "mainsite/stopSopa"
  
  root :to => 'mainsite#stopSOPA'

  # See how all your routes lay out with "rake routes"
end

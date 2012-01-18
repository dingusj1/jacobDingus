JacobDingus::Application.routes.draw do
  get "mainsite/index"
  get "mainsite/webume"
  get "mainsite/contactPage"
  post "mainsite/send_mail"
  post "mainsite/StopSOPA"
  
  root :to => 'mainsite#StopSOPA'

  # See how all your routes lay out with "rake routes"
end

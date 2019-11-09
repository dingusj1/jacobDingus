Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get "welcome/webume"
  get "welcome/useful_links"
  get "welcome/about_me"
  get "welcome/StopSOPA"
end

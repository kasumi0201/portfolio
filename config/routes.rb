Rails.application.routes.draw do
  root to: 'pages#homepage'

get 'homepage', to: 'pages#homepage'
get 'aboutme', to: 'pages#aboutme'
get 'interests', to: 'pages#interests'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

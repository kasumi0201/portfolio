Rails.application.routes.draw do
  root to: 'pages#homepage'

get 'homepage', to: 'pages#homepage'
get 'aboutme', to: 'pages#aboutme'
get 'interests', to: 'pages#interests'
get 'study', to: 'pages#study'

get 'inquiry' => 'inquiry#index'              # 入力画面
post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

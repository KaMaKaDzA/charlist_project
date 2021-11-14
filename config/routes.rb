Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :charlists do
    member do
      get 'download'
    end
    get 'construct', on: :new
  end
end
''
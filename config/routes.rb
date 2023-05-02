Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: %i[create index show new] do
    resources :reviews, only: %i[new create]
  end

  resources :reviews

  root 'restaurants#index'
end

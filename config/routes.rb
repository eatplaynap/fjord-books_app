Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books

  root 'books#index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

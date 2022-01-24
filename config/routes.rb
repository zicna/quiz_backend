Rails.application.routes.draw do
  resources :responses
  resources :options
  resources :takes
  # resources :users
  resources :questions, only: :show
  resources :quizzes

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

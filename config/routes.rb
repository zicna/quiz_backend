Rails.application.routes.draw do
  resources :responses
  resources :options
  resources :takes
  resources :users
  resources :questions, only: :show
  resources :quizzes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

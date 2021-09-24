Rails.application.routes.draw do
  resources :responses
  resources :users
  resources :options
  resources :questions
  resources :quizzes
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

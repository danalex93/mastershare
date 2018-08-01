Rails.application.routes.draw do
  resources :enrollments
  resources :materials
  resources :comments
  resources :topics
  resources :workshops
  resources :semesters
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root "workshops#index"
  devise_for :students, path: "students", controllers: {
    sessions: "students/sessions",
    passwords: "students/passwords",
    registrations: "students/registrations"
  }
  devise_for :mentors, path: "mentors", controllers: {
    sessions: "mentors/sessions",
    passwords: "mentors/passwords",
    registrations: "mentors/registrations"  
  }
  resources :workshops do
    resources :topics do 
      resources :comments
    end
    resources :materials
    resources :enrollments
  end
  # resources :semesters
end

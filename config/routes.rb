Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # list all restaurants
  get "tasks", to: "tasks#index"
  #create new restaurant
  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new"
  # see one restaurant
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  #update
  patch "tasks/:id", to: "tasks#update", as: :update_task
  delete "tasks/:id", to: "tasks#destroy"

end

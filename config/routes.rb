Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index', as: :back
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  get 'task/:id', to: 'tasks#show', as: :task
  patch 'task/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end

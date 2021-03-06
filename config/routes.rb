Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #SHOW
  get '/tasks', to: 'tasks#index'

  #CREATE
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  #FIND
  get '/tasks/:id', to: 'tasks#show', as: :task

  #UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch '/tasks/:id', to: 'tasks#update'

  #DELETE
  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy_task
end

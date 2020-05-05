Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users', to: 'users#index', as: 'index'
  # get 'users/new', to: 'users#new', as: 'new'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit'
  # post 'photos', to: 'photos#create', as: 'create'
  # put 'photos/:id', to: 'photos#update', as: 'update'
  # delete 'photos/:id', to: 'photos#destroy', as: 'destroy'
end

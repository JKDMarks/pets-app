Rails.application.routes.draw do

  ### pets routes
  get 'pets/:id/edit', to: 'pets#edit'
  get 'pets', to: 'pets#index'
  get 'pets/new', to: 'pets#new'
  get 'pets/:id', to: 'pets#show', as: 'pet'
  patch 'pets/:id', to:'pets#update'
  post 'pets', to:'pets#create'
  delete 'pets/:id', to: 'pets#destroy'

  #### owners routes
  get 'owners/:id/edit', to: 'owners#edit'
  get 'owners', to: 'owners#index'
  get 'owners/new', to: 'owners#new'
  get 'owners/:id', to: 'owners#show', as: 'owner'
  patch 'owners/:id', to:'owners#update'
  post 'owners', to:'owners#create'
  delete 'owners/:id', to: 'owners#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

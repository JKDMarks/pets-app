Rails.application.routes.draw do
  get 'pets/edit', to: 'pets#edit'
  get 'pets', to: 'pets#index'
  get 'pets/new', to: 'pets#new'
  get 'pets/:id', to: 'pets#show'
  get 'owners/edit', to: 'owners#edit'
  get 'owners', to: 'owners#index'
  get 'owners/new', to: 'owners#new'
  get 'owners/:id', to: 'owners#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

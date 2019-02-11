Rails.application.routes.draw do
  get 'doses/index'
  get 'doses/create'
  get 'doses/new'
  get 'doses/edit'
  get 'doses/show'
  get 'doses/update'
  get 'doses/destroy'
  get 'cocktails', to: 'cocktails#index'
  post 'cocktails', to: 'cocktails#create'

  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktails

  get 'cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktails

  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  patch 'cocktails/:id', to: 'cocktails#update'
  delete 'cocktails/:id', to: 'cocktails#destroy'
end

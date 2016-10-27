Rails.application.routes.draw do

  # Homepage
  root 'items#index'

  # # Forms
  # get 'items/new' => 'items#new', as: :new_item
  # get 'items/:id/edit' => 'items#edit', as: :edit_item
  #
  # get 'items' => 'items#index', as: :items
  # post 'items' => 'items#create'
  #
  # patch 'items/:id' => 'items#update', as: :item
  # delete 'items/:id' => 'items#destroy'

  resources :items, except: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

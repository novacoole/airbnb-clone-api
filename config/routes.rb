Rails.application.routes.draw do
  get 'listings/index'
  get 'listings/new'
  get 'listings/create'
  get 'listings/edit'
  get 'listings/update'
  get 'listings/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

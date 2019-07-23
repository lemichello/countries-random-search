Rails.application.routes.draw do
  get 'countries/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'countries#index'
end

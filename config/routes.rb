Rails.application.routes.draw do
  get 'dogs/sorted' => 'dogs#sorted'
  resources :dogs , only: [:show, :index]
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

Rails.application.routes.draw do
  resources :dogs, only: [:index, :show]
  resources :employees, only: [:index, :show, :edit, :new, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/sorted', to: "dogs#sorted", as: :sorted
end

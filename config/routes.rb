Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :lenders, controllers: {
    sessions: 'lenders/sessions',
    passwords: 'lenders/passwords',
    registrations: 'lenders/registrations'
  }
  devise_for :borrowers, controllers: {
    sessions: 'borrowers/sessions',
    passwords: 'borrowers/passwords',
    registrations: 'borrowers/registrations'
  }

end

Rails.application.routes.draw do
  get 'static/home'

  get 'static/help'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

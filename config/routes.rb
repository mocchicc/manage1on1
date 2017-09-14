Rails.application.routes.draw do

  get 'users/new'

  get 'users/crete'

  get 'users/edit'

  get 'users/destroy'

  post 'users/update'

  get 'users/index'

  get 'users/show'

  root to: "static#home"

  get 'static/help'

  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
	get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

end


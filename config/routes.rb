Rails.application.routes.draw do
  get 'dashboard/index'

  resources :questions do
    resources :answers
  end

  root 'dashboard#index'

end

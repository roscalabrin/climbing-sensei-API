Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions',
                                    registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tags, only: [:index]
      resources :saved_days, only: [:index]
      delete 'logout', to: 'sessions#destroy'
    end
  end
end

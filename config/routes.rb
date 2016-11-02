Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions',
                                    registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tags, only: [:index]
      delete 'logout', to: '#destroy'
    end
  end
end

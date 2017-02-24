Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  namespace :api do
    namespace :v1 do
      get '/photos', to: 'photos#index'
    end
  end

  root 'photos#home'
end

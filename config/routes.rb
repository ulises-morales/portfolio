Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  resources :projects, except: [:show]
  get 'project/:id', to: 'projects#show', as: 'project_show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

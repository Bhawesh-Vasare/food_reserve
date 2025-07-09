Rails.application.routes.draw do
  
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  
  root "user/dashboard#index"
  resources :foods, only: [:index, :show]
  namespace :user do
    get "dashboard", to: "dashboard#index"   
  end

  namespace :driver do
    get "dashboard", to: "dashboard#index"   
  end

  namespace :admin do
    resources :foods 
    get "dashboard", to: "dashboard#index"   
  end
end

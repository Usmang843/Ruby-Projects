# get retrieving data from the server
# add data to an existing file or resources
# update (replace) an existing file or resources in server
# delete data from server
# update a resource partially (modify)

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "articles#index"

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :articles do # capturing the hierarchical relationship that exists between articles and comments
    resources :comments
  end
  # Defines the root path route ("/")
  # root "posts#index"
end

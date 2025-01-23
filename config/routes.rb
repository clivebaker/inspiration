Rails.application.routes.draw do
  resources :quotes
  get "home/index"
  get "quote/:user/:token" => 'home#quote'
  get ":uuid/quote/:log_id" => 'home#single_quote', as: :single_quote 

  get "history/:user" => 'home#history', as: :history 


  post "rating/:log_id/:rating" => 'home#rating', as: :rating 



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
   root "home#index"
end

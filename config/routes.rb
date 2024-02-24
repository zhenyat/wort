Rails.application.routes.draw do
  get 'personal_pronouns/index'
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  scope "/:locale" do
    root 'personal_pronouns#index'
    # resources :personal_pronouns, only: :index
    resources :articles, only: :index
    resources :cases, only: :index
    resources :persons, only: :index
    resources :numbers, only: :index
    resources :genders, only: :index
  end
end

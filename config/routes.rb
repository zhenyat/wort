Rails.application.routes.draw do
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  scope "/:locale" do
    root 'articles#index'
    # get 'articles/index'
    get 'cases/index'
    get 'persons/index'
    get 'numbers/index'
    get 'genders/index'
  end
end

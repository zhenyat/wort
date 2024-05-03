Rails.application.routes.draw do

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # scope "/:locale" do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'home#index'
    resources :stem_vowels, only: :index
    resources :possessive_pronouns, only: :index
    resources :personal_pronouns, only: :index
    resources :articles, only: :index
    resources :cases, only: :index
    resources :persons, only: :index
    resources :numbers, only: :index
    resources :genders, only: :index
  end
end

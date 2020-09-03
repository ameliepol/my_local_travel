Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get "/pages/:page" => "pages#show"
  get "contact", to: "pages#contact"
  get "team", to: "pages#team"
  get "charte", to: "pages#charte"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trips, only: [ :show, :index, :edit, :update, :create, :destroy] do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
    resources :selected_activities, only: [ :create ]
  end

  resources :searches, only: [ :new ]
end

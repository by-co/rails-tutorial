Rails.application.routes.draw do
  # map requests to http://localhost:3000/welcome/index => welcome controller's index action
  get 'welcome/index'

  resources :articles do
    resources :comments
  end
  # map requests for root => the welcome controller's index action
  root 'welcome#index'
end

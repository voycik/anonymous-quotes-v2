Rails.application.routes.draw do
  root to: 'quotes#index'
  resources :quotes do
    resources :comments
  end
end

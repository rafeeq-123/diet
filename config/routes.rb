Rails.application.routes.draw do
  root 'foods#index'
  resources :foods do
    resources :amounts
  end
end

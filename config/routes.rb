Rails.application.routes.draw do

  resources :users do
    member do
      resources :payments
    end
  end

  resources :businesses do
    member do
      resources :invoices
    end
  end
end

Rails.application.routes.draw do

  resources :users do
    member do
      resources :payments
      resources :businesses do
        resources :invoices
      end
    end
  end

end

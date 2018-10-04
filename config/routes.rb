Rails.application.routes.draw do
  resources :users do
    resources :vouchers
  end

  resources :types do
      resources :centers
  end

  resources :centers do
      # resources :types
    member do
      get 'allTypes'
    end
  end
end

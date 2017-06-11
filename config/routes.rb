Rails.application.routes.draw do

    root to: 'credit_cards#index'
    resources :credit_cards, only: [:new, :create, :destroy, :index]

end

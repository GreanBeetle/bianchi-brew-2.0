Rails.application.routes.draw do
  root :to => 'brews#index'

  resources :brews do
    resources :reviews, :except => [:index]
  end
end

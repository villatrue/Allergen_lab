Rails.application.routes.draw do
    resources :recipes, only: [:index, :new]
    resources :ingredients, only: [:index, :show, :new]
    resources :users, only: [:show, :new, :delete]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

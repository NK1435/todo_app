Rails.application.routes.draw do
  resources :goals do
      resources :todos do
        member do
    # /goals/:goal_id/todos/:id/sort というURLに対して
    # todos#sort というアクションを割り当てる
        get "sort"
      end
    end
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

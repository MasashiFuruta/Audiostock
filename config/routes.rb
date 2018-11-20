Rails.application.routes.draw do
  scope module: :web, as: :web do
    root to: 'root#index'

    scope module: :categories do
      resources :bgm,   only: %i[index show]
      resources :se,    only: %i[index show]
      resources :voice, only: %i[index show]
      resources :vocal, only: %i[index show]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

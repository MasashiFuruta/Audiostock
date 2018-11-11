Rails.application.routes.draw do
  scope module: :web, as: :web do
    root to: 'root#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

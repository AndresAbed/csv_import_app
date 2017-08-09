Rails.application.routes.draw do
  root 'users#index'
  post 'users/import', as: :import_users
end

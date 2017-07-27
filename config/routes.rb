Rails.application.routes.draw do
  devise_for :users
  mount FileUploader::UploadEndpoint => "/files"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'data_files#new'
  resources :data_files, only: [:new, :create, :destroy]
end

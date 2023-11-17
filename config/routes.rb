Rails.application.routes.draw do
  devise_for :users
  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'home#index'

  resources :members, only: :show

  get 'edit_description', to: 'members#edit_description', as: 'edit_member_description'
  get 'edit_personal_details', to: 'members#edit_personal_details', as: 'edit_member_personal_details'

  put 'update_description', to: 'members#update_description', as: 'update_member_description'
  put 'update_personal_details', to: 'members#update_personal_details', as: 'update_member_personal_details'
end

# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :administrators
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :welcome

  root 'welcome#index'
end

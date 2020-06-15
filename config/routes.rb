# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#top' # 上から処理をするので順番が重要
  get 'home/about'
  devise_for :users
  resources :users, only: %i[show index edit update]
  resources :books
end

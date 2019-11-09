# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users
  root 'welcome#home'
  resources :artists, param: :slug
end
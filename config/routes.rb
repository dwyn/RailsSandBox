# frozen_string_literal: true

Rails.application.routes.draw do

  root 'welcome#home'
  resources :songs

end

Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'
  resources :artists, param: :slug
# 'songs', action: 'index'

end
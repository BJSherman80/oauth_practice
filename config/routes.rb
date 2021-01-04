Rails.application.routes.draw do
  root 'welcome#new'
  get 'auth/github', as: 'github_login'
  get 'auth/:provider/callback', to: 'sessions#create'
end

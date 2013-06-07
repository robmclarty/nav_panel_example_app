NavPanelExampleApp::Application.routes.draw do
  get 'login'   =>  'sessions#new',     :as => :login
  get 'logout'  =>  'sessions#destroy', :as => :logout
  resources :sessions, :only => [:create]

  resources :users
  resources :posts
  
  root :to => 'posts#index'
end

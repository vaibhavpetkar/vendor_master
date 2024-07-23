RedmineApp::Application.routes.draw do
    namespace :vendor_master do
      resources :vendor_masters
    end
  end
  
Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/unacceptable'
  get 'errors/internal_error'
  root 'home#index'
  get 'home/index'
  devise_for :admins , :skip => [:registrations] 
  as :admin do
  get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
  put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :greens , :skip => [:registrations] 
  as :green do
  get 'greens/edit' => 'devise/registrations#edit', :as => 'edit_green_registration'
  put 'greens' => 'devise/registrations#update', :as => 'green_registration'
  end
  resources :challenges
  resources :startups
  get 'static/support_community'
  get 'static/privacy_terms'
  get 'profile/index'
  get 'static/faqs'
  get "/404", :to => "errors#not_found"
  get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_error"
end

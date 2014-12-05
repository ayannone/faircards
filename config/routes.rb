Rails.application.routes.draw do
 
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :articles
  resources :article_groups
  resources :manufacturers
  resources :countries
  resources :article_packages




  root "main#home", :as => :root

  get '/about' => 'main#about', as: :about
  get '/contact' => 'main#contact', as: :contact
  get '/terms_of_service' => 'main#terms_of_service', as: :terms_of_service
  get '/admin_panel' => 'main#admin_panel', as: :admin_panel

  get '/greeting_cards' => 'main#greeting_cards', as: :greeting_cards
  
end

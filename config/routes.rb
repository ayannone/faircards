Rails.application.routes.draw do
 
  resources :articles
  resources :article_groups
  resources :manufacturers
  resources :countries


  root "main#home", :as => :root
  
end

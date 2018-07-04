Rails.application.routes.draw do
  devise_for :admins
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

     root 'home#index'

     resources :prospect_sites

  
     resources :sites do
     	resources :trains
     end

     resources :trains do
     	resources  :sites
     end

     resources :site_trains do
     	resources :trains
     	resources :sites
     end

end

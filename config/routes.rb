require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
        resources :sites
      end
  end

  devise_for :admins
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

     root 'home#index'

     resources "the_bronx"
     resources :queens
     resources :manhattan
     resources :staten_island
     resources :brooklyn
     resources :about

     resources :prospect_sites


  
     resources :sites do
     	# resources :trains
      #   resources :boroughs
     end

     resources :trains do
     	# resources  :sites
     end

     # resources :sites_trains do
     # 	resources :trains
     # 	resources :sites
     # end

     resources :boroughs do
        # resources :sites
     end


end

Rails.application.routes.draw do
  devise_for :admins
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'home/index'
     root 'home#index'
   scope ':locale' do
     resources :sites
    end
end

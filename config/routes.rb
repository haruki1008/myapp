Rails.application.routes.draw do
  resources :rooms do
     resources :chats 
     
  end 
  root to: 'rooms#index'
 
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

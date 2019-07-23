Rails.application.routes.draw do
  devise_for :users
   #root "pages#home"
     root "videos#index"
    get "videos", to: "videos#index"
    get 'pages/private_page'
    # get "videos/:id", to: "videos#show", as: :video
    # get "videos/new", to: "videos#new"

  resources :videos, :users , :comments
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
  
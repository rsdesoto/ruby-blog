Rails.application.routes.draw do
  resources :posts

  # get "/pages", to: "pages#index"
  # post "/pages", to: "pages#create"
  # get "/pages/new", to: "pages#new", as: "new_page"
  # get "/pages/:id", to: "pages#show", as: "page"
  # get "/pages/:id/edit", to: "pages#edit", as: "edit_page"
  # patch "/pages/:id", to: "pages#update"
  # delete "/pages/:id", to: "pages#destroy"

  # can be changed to: 

  resources :pages
  
 
  
  # the get request for pages should go to the pages index method
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

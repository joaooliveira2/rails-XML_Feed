Rails.application.routes.draw do
  resources :items
  resources :lists


  root 'welcome#index'
  #Rails.application.routes.draw do
  # get 'welcome/main_start'
  # get 'choose_partner', to: 'welcome#choose_partner'
  # get 'add_product', to: 'welcome#add_product'
  # get 'edit_product', to: 'welcome#edit_product'
  # get 'delete_product', to: 'welcome#delete_product'
  # root 'welcome#main_start'
  #end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

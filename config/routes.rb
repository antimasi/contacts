Rails.application.routes.draw do

  post "phone" => "phone#create"

  get "contact" => "contact#index"

  post "contact" => "contact#create"
  
  put "contact/:id" => "contact#update"

  get "contact/new" => "contact#new"

  get "contact/:id" => "contact#show"

  get "contact/:id/edit" => "contact#edit"

  delete "contact/:id" => "contact#destroy"

  root 'contact#new'

  resources :contacts do
    resources :phones
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

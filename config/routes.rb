Rails.application.routes.draw do

  namespace :v1 do 
    post "/users" => "users#create"

    get "/restaurants" => "restaurants#index" 
    get "/restaurants/:id" => "restaurants#show"
  end 

end

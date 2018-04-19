Rails.application.routes.draw do

  post 'user_token' => 'user_token#create'
  namespace :v1 do 
    post "/users" => "users#create"

    get "/restaurants" => "restaurants#index" 
    get "/restaurants/:id" => "restaurants#show"

    post "/reviews" => "reviews#create"
    get "/reviews" => "reviews#index" 
  end 

end

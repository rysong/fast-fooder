Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :v1 do 
    post "/users" => "users#create"

    get "/restaurants" => "restaurants#index" 
    get "/restaurants/:id" => "restaurants#show"
    get "/googlerestaurants/:id" => "restaurants#google"


    post "/reviews" => "reviews#create"
    get "/reviews" => "reviews#index" 

    post "/user_meals" => "user_meals#create"

    post "/meals/:id" => "meals#upvote"
  end 

end

Rails.application.routes.draw do

  namespace :v1 do 
    post "/users" => "users#create"
  end 
  
end

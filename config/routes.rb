Rails.application.routes.draw do
 get "/recipes" =>"recipe#index"
 get "/recipes/:id" =>"recipe#show"
 patch "/recipes/:id" =>"recipe#update"
 delete "/recipes/:id" =>"recipe#destroy"
 post "/recipes" =>"recipe#create"
end

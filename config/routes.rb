Rails.application.routes.draw do
 get "/recipes" =>"recipe#index"
 get "/recipes/:id" =>"recipe#show"
 patch "/recipes/:id" =>"recipe#update"
end

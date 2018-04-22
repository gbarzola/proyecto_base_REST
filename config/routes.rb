Rails.application.routes.draw do
  
  
  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :products
      resources :productos
      resources :verificates
    end
  end
end


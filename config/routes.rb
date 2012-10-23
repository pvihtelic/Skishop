Skishop::Application.routes.draw do
  get "/skis", :controller => "Skis", :action => "index", :as => "skis"
  post "/skis", :controller => "Skis", :action => "create"
 
  get "/skis/new", :controller => "Skis", :action => "new", :as => "new_ski"
  get "/skis/:id", :controller => "Skis", :action => "show", :as => "ski"

  delete "/skis/:id", :controller => "Skis", :action => "destroy" 
end

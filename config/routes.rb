Skishop::Application.routes.draw do
  get "/skis", :controller => "Skis", :action => "index", :as => "skis"
  post "/skis", :controller => "Skis", :action => "create"
  
  get "/skis/new", :controller => "Skis", :action => "new", :as => "new_ski"
  get "/skis/:id", :controller => "Skis", :action => "show", :as => "ski"
  put "/skis/:id", :controller => "Skis", :action => "update"

  delete "/skis/:id", :controller => "Skis", :action => "destroy"
  get "/skis/:id/edit", :controller => "Skis", :action => "edit", :as => "edit_ski"
end
Rails.application.routes.draw do
  root :to => "items#index"
  # Routes for the Recipe_item_state resource:
  # CREATE
  get "/recipe_item_states/new", :controller => "recipe_item_states", :action => "new"
  post "/create_recipe_item_state", :controller => "recipe_item_states", :action => "create"

  # READ
  get "/recipe_item_states", :controller => "recipe_item_states", :action => "index"
  get "/recipe_item_states/:id", :controller => "recipe_item_states", :action => "show"

  # UPDATE
  get "/recipe_item_states/:id/edit", :controller => "recipe_item_states", :action => "edit"
  post "/update_recipe_item_state/:id", :controller => "recipe_item_states", :action => "update"

  # DELETE
  get "/delete_recipe_item_state/:id", :controller => "recipe_item_states", :action => "destroy"
  #------------------------------

  # Routes for the Item_state resource:
  # CREATE
  get "/item_states/new", :controller => "item_states", :action => "new"
  post "/create_item_state", :controller => "item_states", :action => "create"

  # READ
  get "/item_states", :controller => "item_states", :action => "index"
  get "/item_states/:id", :controller => "item_states", :action => "show"

  # UPDATE
  get "/item_states/:id/edit", :controller => "item_states", :action => "edit"
  post "/update_item_state/:id", :controller => "item_states", :action => "update"

  # DELETE
  get "/delete_item_state/:id", :controller => "item_states", :action => "destroy"
  #------------------------------

  # Routes for the State resource:
  # CREATE
  get "/states/new", :controller => "states", :action => "new"
  post "/create_state", :controller => "states", :action => "create"

  # READ
  get "/states", :controller => "states", :action => "index"
  get "/states/:id", :controller => "states", :action => "show"

  # UPDATE
  get "/states/:id/edit", :controller => "states", :action => "edit"
  post "/update_state/:id", :controller => "states", :action => "update"

  # DELETE
  get "/delete_state/:id", :controller => "states", :action => "destroy"
  #------------------------------

  # Routes for the Recipe resource:
  # CREATE
  get "/recipes/new", :controller => "recipes", :action => "new"
  post "/create_recipe", :controller => "recipes", :action => "create"

  # READ
  get "/recipes", :controller => "recipes", :action => "index"
  get "/recipes/:id", :controller => "recipes", :action => "show"

  # UPDATE
  get "/recipes/:id/edit", :controller => "recipes", :action => "edit"
  post "/update_recipe/:id", :controller => "recipes", :action => "update"

  # DELETE
  get "/delete_recipe/:id", :controller => "recipes", :action => "destroy"
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

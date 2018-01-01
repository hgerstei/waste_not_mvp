class RecipeItemStatesController < ApplicationController
  def index
    @recipe_item_states = RecipeItemState.all

    render("recipe_item_states/index.html.erb")
  end

  def show
    @recipe_item_state = RecipeItemState.find(params[:id])

    render("recipe_item_states/show.html.erb")
  end

  def new
    @recipe_item_state = RecipeItemState.new

    render("recipe_item_states/new.html.erb")
  end

  def create
    @recipe_item_state = RecipeItemState.new

    @recipe_item_state.recipe_id = params[:recipe_id]
    @recipe_item_state.item_state_id = params[:item_state_id]
    @recipe_item_state.description = params[:description]

    save_status = @recipe_item_state.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/recipe_item_states/new", "/create_recipe_item_state"
        redirect_to("/recipe_item_states")
      else
        redirect_back(:fallback_location => "/", :notice => "Recipe item state created successfully.")
      end
    else
      render("recipe_item_states/new.html.erb")
    end
  end

  def edit
    @recipe_item_state = RecipeItemState.find(params[:id])

    render("recipe_item_states/edit.html.erb")
  end

  def update
    @recipe_item_state = RecipeItemState.find(params[:id])

    @recipe_item_state.recipe_id = params[:recipe_id]
    @recipe_item_state.item_state_id = params[:item_state_id]
    @recipe_item_state.description = params[:description]

    save_status = @recipe_item_state.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/recipe_item_states/#{@recipe_item_state.id}/edit", "/update_recipe_item_state"
        redirect_to("/recipe_item_states/#{@recipe_item_state.id}", :notice => "Recipe item state updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Recipe item state updated successfully.")
      end
    else
      render("recipe_item_states/edit.html.erb")
    end
  end

  def destroy
    @recipe_item_state = RecipeItemState.find(params[:id])

    @recipe_item_state.destroy

    if URI(request.referer).path == "/recipe_item_states/#{@recipe_item_state.id}"
      redirect_to("/", :notice => "Recipe item state deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Recipe item state deleted.")
    end
  end
end

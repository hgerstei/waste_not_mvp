class ItemStatesController < ApplicationController
  def index
    @item_states = ItemState.all

    render("item_states/index.html.erb")
  end

  def show
    @item_state = ItemState.find(params[:id])

    render("item_states/show.html.erb")
  end

  def new
    @item_state = ItemState.new

    render("item_states/new.html.erb")
  end

  def create
    @item_state = ItemState.new

    @item_state.item_id = params[:item_id]
    @item_state.state_id = params[:state_id]

    save_status = @item_state.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/item_states/new", "/create_item_state"
        redirect_to("/item_states")
      else
        redirect_back(:fallback_location => "/", :notice => "Item state created successfully.")
      end
    else
      render("item_states/new.html.erb")
    end
  end

  def edit
    @item_state = ItemState.find(params[:id])

    render("item_states/edit.html.erb")
  end

  def update
    @item_state = ItemState.find(params[:id])

    @item_state.item_id = params[:item_id]
    @item_state.state_id = params[:state_id]

    save_status = @item_state.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/item_states/#{@item_state.id}/edit", "/update_item_state"
        redirect_to("/item_states/#{@item_state.id}", :notice => "Item state updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Item state updated successfully.")
      end
    else
      render("item_states/edit.html.erb")
    end
  end

  def destroy
    @item_state = ItemState.find(params[:id])

    @item_state.destroy

    if URI(request.referer).path == "/item_states/#{@item_state.id}"
      redirect_to("/", :notice => "Item state deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Item state deleted.")
    end
  end
end

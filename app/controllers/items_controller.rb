class ItemsController < ApplicationController
  def index
    @items = Item.all

    render("items/index.html.erb")
  end

  def show
    @item_state = ItemState.new
    @item = Item.find(params[:id])

    render("items/show.html.erb")
  end

  def new
    @item = Item.new

    render("items/new.html.erb")
  end

  def create
    @item = Item.new

    @item.name = params[:name]

    save_status = @item.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/items/new", "/create_item"
        redirect_to("/items")
      else
        redirect_back(:fallback_location => "/", :notice => "Item created successfully.")
      end
    else
      render("items/new.html.erb")
    end
  end

  def edit
    @item = Item.find(params[:id])

    render("items/edit.html.erb")
  end

  def update
    @item = Item.find(params[:id])

    @item.name = params[:name]

    save_status = @item.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/items/#{@item.id}/edit", "/update_item"
        redirect_to("/items/#{@item.id}", :notice => "Item updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Item updated successfully.")
      end
    else
      render("items/edit.html.erb")
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    if URI(request.referer).path == "/items/#{@item.id}"
      redirect_to("/", :notice => "Item deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Item deleted.")
    end
  end
end

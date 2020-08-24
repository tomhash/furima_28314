class ItemsController < ApplicationController
 before_action :authenticate_user!,only: [:new,:create,:edit,:destroy]
 before_action :set_item,only: [:show,:edit,:update,:destroy]
  def index
    
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end  

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
   
  end
  
  def show
    
  end

  def edit
  
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end  
  end

  def destroy
   if  @item.destroy
    redirect_to root_path
  else
    render :show
  end

  private
  def item_params
    params.require(:item).permit(:image,:name,:price,:description,
      :category_id,:shipping_type_id,:item_condition_id,:ship_from_id,:preparation_day_id).merge(user_id: current_user.id)
  end
  def set_item
    @item = Item.find(params[:id])
  end
end

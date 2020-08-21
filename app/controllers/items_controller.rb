class ItemsController < ApplicationController
 before_action :authenticate_user!,only: [:new,:create]
  def index
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
  def destroy
  end
  
  def item_params
    params.require(:item).permit(:image,:name,:price,:description,
      :category_id,:shipping_type_id,:item_condition_id,:ship_from_id,:preparation_day_id).merge(user_id: current_user.id)
  end
end

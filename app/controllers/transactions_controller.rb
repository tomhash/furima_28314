class TransactionsController < ApplicationController
  before_action :set_transaction,only: [:create,:index]
  def index
    
    
  end

  def create
    @pay = Pay.new(pay_params)
    if @pay.save
      pay_item
      return redirect_to root_path
    else
      render 'index'
    end
  end
  private

  def pay_params
    params.permit( :postal_code, :phone_number, :city, :address, :building, :ship_from_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] 
    Payjp::Charge.create(
      amount: @item.price,  
      card: params[:token],    
      currency:'jpy'                
    )
  end
  def set_transaction
    @item = Item.find(params[:item_id])
  end

end

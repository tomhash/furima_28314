class Pay
  extend ActiveHash::Associations::ActiveRecordExtensions
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :phone_number, :city, :address, :building, :ship_from_id, :token
  with_options presence: true do
    validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/}
    validates :phone_number, format: { with: /\A\d{11}\z/}
    validates :city, :address, :building
    validates :ship_from_id,  presence: true
  end
  validates :token,  presence: true
  
  def save
    buyer = Buyer.create(user_id: user_id, item_id: item_id)
    Destination.create(postal_code: postal_code, ship_from_id: ship_from_id, city: city, address: address, phone_number: phone_number, building: building, buyer_id: buyer.id)
  end
end
class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  with_options presence: true do
    belongs_to_active_hash :category 
    belongs_to_active_hash :item_condition
    belongs_to_active_hash :preparation_day
    belongs_to_active_hash :ship_from
    belongs_to_active_hash :shipping_type
    validates :name, :description 
 end
  with_options numericality: { other_than: 1 }  do
    belongs_to_active_hash :category 
    belongs_to_active_hash :item_condition
    belongs_to_active_hash :preparation_day
    belongs_to_active_hash :ship_from
    belongs_to_active_hash :shipping_type
 end
   validates :price,  presence: true, inclusion: { in: 300..9999999 }
   validates :ship_from_id,  presence: true
   belongs_to :user
   has_one_attached :image
   has_one :buyer
end

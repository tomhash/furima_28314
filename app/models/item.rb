class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category 
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :preparation_day
  belongs_to_active_hash :ship_from
  belongs_to_active_hash :shipping_type
  validates :name, :description, :category_id, :item_condition_id, :preparation_day, :ship_from_id, :shipping_type_id, :price, presence: true
  validates :category_id, :item_condition_id, :preparation_day_id, :ship_from_id, :shipping_type_id, numericality: { other_than: 1 } 

  belongs_to :user
  has_one_attached :image
end

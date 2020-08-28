class Destination < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ship_from, presence: true ,numericality: { other_than: 1 }
  belongs_to :buyer
  
end

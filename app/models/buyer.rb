class Buyer < ApplicationRecord
  with_options foreign_key: true do
  t.references :user 
  t.references :item
  end
  belongs_to :user
  belongs_to :item
  has_one :destination
end

class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      
      # t.integer    :category_id           , null: false
      # t.integer    :item_condition_id     , null: false
      # t.integer    :preparation_day_id    , null: false
      # t.integer    :ship_from_id          , null: false
      # t.integer    :shipping_type_id      , null: false
      t.timestamps
    end
  end
end

FactoryBot.define do
  factory :item do
    image {Faker::LoremFlickr.image}
    name {"箱"}
    price{"500"}
    description{Faker::Lorem.sentence}
    item_condition_id{"2"}
    user_id
    category_id{"2"}
    shipping_type_id{"2"}
    ship_from_id{"2"}
    preparation_day_id{"2"}
  end
end

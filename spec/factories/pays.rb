FactoryBot.define do
  factory :pay do
    postal_code {'123-4567'}
    phone_number{'09098762345'}
    city{'世田谷区'}
    address{'1416'}
    building{'世田谷ハイツ'}
    ship_from_id{'2'}
    token{'huhuhuu'}
  end
end

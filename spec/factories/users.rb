FactoryBot.define do
  factory :user do
      nickname{"トム"}
      family_name{"橋上"}
      first_name{"智成"}
      family_name_kana{"ハシカミ"}
      first_name_kana{"トモナリ"}
      email {Faker::Internet.free_email}
      password = Faker::Internet.password(min_length: 6)
      password {password}
      password_confirmation {password}
      birthday{"1980-11-25"}
  end
     
end 


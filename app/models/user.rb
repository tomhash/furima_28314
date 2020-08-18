class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  with_options presence: true do
    validates :birthday,:nickname
    validates :family_name,:first_name, format: {with: /\A[ぁ-んァ-ン一-龥]+\z/}
    validates :family_name_kana,:first_name_kana, format: {with: /\A[\p{katakana} --&&[^ -~｡-ﾟ]]+/ }

  end
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :nickname,  presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 6 }
  validates :family_name,  presence: true
  validates :first_name,  presence: true
  validates :family_name_kana,  presence: true
  validates :first_name_kana,  presence: true
  validates :family_name,:first_name, format: {
    with: /\A[ぁ-んァ-ン一-龥]+\z/}
  validates :family_name_kana,:first_name_kana, format: {
    with: /\A[\p{katakana} --&&[^ -~｡-ﾟ]]+/} 
  validates :birthday,  presence: true  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

require 'rails_helper'

RSpec.describe Pay, type: :model do
    describe '購入者情報' do
      before do
        @pay = FactoryBot.build(:pay)
      end
      context '購入処理がうまくいく時' do
        it 'postal_code、phone_number、city、address、building、ship_from_idが存在すれば購入処理ができること' do
          expect(@pay).to be_valid
        end
      
      end
      context '購入処理がうまくいかない時' do
        it 'postal_codeが空だと購入処理ができないこと' do
          @pay.postal_code = nil
          @pay.valid?
          expect(@pay.errors.full_messages).to include("Postal code can't be blank", "Postal code is invalid")
        end
        it 'postal_codeにハイフンが存在しないと購入処理ができないこと' do
          @pay.postal_code = "6691358"
          @pay.valid?
          expect(@pay.errors.full_messages).to include( "Postal code is invalid")
        end
        it 'phone_numberが空だと購入処理ができないこと' do
          @pay.phone_number = nil
          @pay.valid?
          expect(@pay.errors.full_messages).to include("Phone number can't be blank")
        end
        it 'phone_numberが12桁以上だと購入処理ができないこと' do
          @pay.phone_number = "0909888881740"
          @pay.valid?
          expect(@pay.errors.full_messages).to include("Phone number is invalid")
         
        end
        it 'cityが空だと購入処理ができないこと' do
          @pay.city = nil
          @pay.valid?
          expect(@pay.errors.full_messages).to include("City can't be blank")
        end
        it 'addressが空だと購入処理ができないこと' do
          @pay.address = nil
          @pay.valid?
          expect(@pay.errors.full_messages).to include("Address can't be blank")
        end
        it 'ship_from_idが空だと購入処理ができないこと' do
          @pay.ship_from_id = nil
          @pay.valid?
          binding.pry
          expect(@pay.errors.full_messages).to include("Ship from can't be blank")
        end
        
      end
    end    
end

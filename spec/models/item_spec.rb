
require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    before do
      @item = FactoryBot.build(:item)
    end
    
    context '出品ができる時' do
      it "image, name, description, category_id, item_condition, preparation_day, ship_from, shipping_type,priceが存在すれば出品できること" do
        expect(@item).to be_valid
      end
      
    end

    context '出品できない時' do
      it "imageが空では出品できないこと" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
        
      end
      it "nameが空では出品できないこと" do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name name can't be blank")
      end
      it "descriptionが空では出品できないこと" do
        @item.discription = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Discription can't be blank")
      end
      it "category_idが空では出品できないこと" do
        @item.category_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Category_id can't be blank")
      end
      it "item_conditionが空では出品できないこと"do
        @item.item_condition = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item_condition can't be blank")
      end
      it "preparation_dayが空では出品できないこと" do
        @item.preparation_day= nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Preparation_day cant be blank")
      end
      it "ship_fromが空では出品できないこと" do
        @item.ship_from= nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship_from can't be blank")
      end
      it "shipping_typeが空では出品できないこと" do
        @item.shipping_type= nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping_type can't be blank")
      end  
      it "priceが空では出品できないこと" do
        @item.price= nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      
      end
      
      end
    end
  end
end
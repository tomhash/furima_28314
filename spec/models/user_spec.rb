require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end
    
    it "nickname、first_name、family_name、first_name_kana、family_name_kana、email、password、password_confimation、birthdayが存在すれば登録できること" do
      expect(@user).to be_valid
    end
    it "nicknameが空では登録できないこと" do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank") 
    end
    it "first_nameが空では登録できないこと" do
      @user.first_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank", "First name is invalid")
    end
    it "family_nameが空では登録できないこと" do
      @user.family_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Family name can't be blank", "Family name is invalid")
    end
    it "first_name_kanaが空では登録できないこと" do
      @user.first_name_kana = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("First name kana can't be blank", "First name kana is invalid")
    end
    it "family_name_kanaが空では登録できないこと" do
      @user.family_name_kana = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Family name kana can't be blank", "Family name kana is invalid")
    end
    it "姓、名が全角でないと登録できない" do
      @user.first_name = "ﾊｼｶﾐ"
      @user.family_name = "ﾄﾓﾅﾘ"
      @user.valid?
      expect(@user.errors.full_messages).to include("Family name is invalid", "First name is invalid")
    end
    it "emailが空では登録できないこと" do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it "同じemailが存在する場合登録できない" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end  
    it "メールアドレスは@がないと登録できない" do
      @user.email = "aaaaaaaaaaaaaa" 
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    
    end
    
    it "passwordが空では登録できないこと" do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank",
        "Password is too short (minimum is 6 characters)",
        "Password can't be blank",
        "Password confirmation doesn't match Password")
    end
    it "passwordが存在していてもpassword_confirmationが空では登録できないこと" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it "passwordが6文字以上であれば登録できること" do
      @user.password = "aaaaa1"
      @user.password_confirmation = "aaaaa1"
      @user.valid?
      expect(@user).to be_valid
    end
    it "passwordが5文字以下であれば登録できないこと" do
      @user.password = "aaaa1"
      @user.password_confirmation = "aaaa1"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)",
      "Password is too short (minimum is 6 characters)")
      
    end
    it "birthdayが空では登録できないこと" do
      @user.birthday = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end
    
    
  
    
  
  end
end
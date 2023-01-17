class CatCoffeeShopComment < ApplicationRecord
  
  # アソシエーション・関連づけ
  belongs_to :customer
  belongs_to :cat_coffee_shop
  # バリテーション設定
  validates :cat_coffee_shop_comment, presence: true
  
end

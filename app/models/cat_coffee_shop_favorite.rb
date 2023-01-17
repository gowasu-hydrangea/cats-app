class CatCoffeeShopFavorite < ApplicationRecord
  
  # アソシエーション・関連づけ
  belongs_to :customer
  belongs_to :cat_coffee_shop
  
end

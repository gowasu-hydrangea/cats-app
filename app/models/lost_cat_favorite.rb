class LostCatFavorite < ApplicationRecord
  
  # アソシエーション・関連づけ
  belongs_to :customer
  belongs_to :lost_cat
  
end

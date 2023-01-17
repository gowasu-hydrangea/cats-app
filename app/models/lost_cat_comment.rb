class LostCatComment < ApplicationRecord
  
  # アソシエーション・関連づけ
  belongs_to :customer
  belongs_to :lost_cat
  
  # バリテーション設定
  validates :lost_cat_comment, presence: true
  

end

class CatCoffeeShop < ApplicationRecord
  
  # 画像
  has_one_attached :image
  
  # バリテーション設定
  validates :cat_coffee_shop_location, presence: true
  validates :cat_coffee_shop_title, presence: true
  validates :cat_coffee_shop_introduction, presence: true
  enum cat_coffee_shop_is_published_flag: { public: 0, private: 1 }, _prefix: true
  
  # アソシエーション・関連づけ
  has_many :cat_coffee_shop_favorites, dependent: :destroy
  has_many :cat_coffee_shop_comments, dependent: :destroy
  
  def favorited_by?(customer)
    cat_coffee_shop_favorites.exists?(customer_id: customer.id)
  end
  
end

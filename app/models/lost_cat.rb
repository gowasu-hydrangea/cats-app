class LostCat < ApplicationRecord
  
  # 画像
  has_one_attached :image
  
  # アソシエーション設定
  belongs_to :customer
  has_many :lost_cat_favorites, dependent: :destroy
  has_many :lost_cat_comments, dependent: :destroy
  
  # バリテーション設定
  validates :lost_cat_title, presence: true
  validates :lost_cat_range, presence: true
  validates :lost_cat_introduction, presence: true
  enum lost_cat_is_published_flag: { public: 0, private: 1 }, _prefix: true
  
  def favorited_by?(customer)
    lost_cat_favorites.exists?(customer_id: customer.id)
  end
  
end

class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :customer_name, presence: true
  
  # アソシエーション・関連づけ
  has_many :cat_coffee_shop_favorites, dependent: :destroy
  has_many :cat_coffee_shop_comments, dependent: :destroy
  has_many :lost_cat_favorites, dependent: :destroy
  has_many :lost_cat_comments, dependent: :destroy
         
end

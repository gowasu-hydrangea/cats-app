class CatCafe < ApplicationRecord
    
    has_one_attached :image
    
    validates :cat_cafe_location, presence: true
    validates :cat_cafe_title, presence: true
    validates :cat_cafe_introduction, presence: true
    enum cat_cafe_is_published_flag: { public: 0, private: 1 }, _prefix: true
end

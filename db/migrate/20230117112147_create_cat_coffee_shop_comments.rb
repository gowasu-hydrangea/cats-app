class CreateCatCoffeeShopComments < ActiveRecord::Migration[6.1]
  def change
    create_table :cat_coffee_shop_comments do |t|
      
      # 会員ID
      t.integer :customer_id, null: false
      # 保護猫カフェ投稿ID
      t.integer :cat_coffee_shop_id, null: false
      # コメント本文
      t.text :cat_coffee_shop_comment, null: false
      

      t.timestamps
    end
  end
end

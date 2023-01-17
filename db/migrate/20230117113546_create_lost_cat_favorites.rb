class CreateLostCatFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :lost_cat_favorites do |t|
      
      # 会員ID
      t.integer :customer_id, null: false
      # 迷い猫投稿ID
      t.integer :lost_cat_id, null: false

      t.timestamps
    end
  end
end

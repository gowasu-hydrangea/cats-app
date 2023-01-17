class CreateLostCatComments < ActiveRecord::Migration[6.1]
  def change
    create_table :lost_cat_comments do |t|
      
      # 会員ID
      t.integer :customer_id, null: false
      # 迷い猫投稿ID
      t.integer :lost_cat_id, null: false
      # コメント本文
      t.text :lost_cat_comment, null: false

      t.timestamps
    end
  end
end

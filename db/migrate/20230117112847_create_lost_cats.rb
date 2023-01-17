class CreateLostCats < ActiveRecord::Migration[6.1]
  def change
    create_table :lost_cats do |t|
      
      # 会員ID
      t.integer :customer_id, null: false
      # タイトル(猫の名前/都道府県)
      t.string :lost_cat_title, null: false
      # 脱走範囲
      t.text :lost_cat_range, null: false
      # 迷い猫の特徴・紹介文
      t.text :lost_cat_introduction, null: false
      # 投稿ステータス
      t.boolean :lost_cat_is_published_flag, null: false, default: false

      t.timestamps
    end
  end
end

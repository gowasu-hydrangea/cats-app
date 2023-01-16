class CreateCatCaves < ActiveRecord::Migration[6.1]
  def change
    create_table :cat_caves do |t|
      
      # 会員名
      t.integer :customer_id, null: false
      # 店名/最寄り駅
      t.string :cat_cafe_location, null: false
      # 保護猫カフェ投稿のタイトル
      t.string :cat_cafe_title, null: false
      # 保護猫カフェ投稿の紹介文
      t.text :cat_cafe_introduction, null: false
      # 投稿ステータス
      t.boolean :cat_cafe_is_published_flag, null: false, default: false

      t.timestamps
    end
  end
end

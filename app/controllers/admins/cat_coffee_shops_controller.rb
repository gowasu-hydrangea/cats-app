class Admins::CatCoffeeShopsController < ApplicationController
  
  # ア＞3章＞コントローラにindexアクションを追加する
  def index
    @cat_coffee_shops = CatCoffeeShop.all
  end
  
  def show
    # ア・２＞18章＞コメント投稿機能＞Controller
    # コメントを投稿するためのインスタンス変数を定義
    @cat_coffee_shop_comment = CatCoffeeShopComment.new
  end

  def edit
  end

  def update
  end
  
end

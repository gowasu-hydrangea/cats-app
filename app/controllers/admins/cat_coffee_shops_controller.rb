class Admins::CatCoffeeShopsController < ApplicationController
  
  # ア＞3章＞コントローラにindexアクションを追加する
  def index
    @cat_coffee_shops = CatCoffeeShop.all
  end

  def show
  end

  def edit
  end

  def update
  end
  
end

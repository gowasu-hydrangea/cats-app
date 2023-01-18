class Customers::LostCatsController < ApplicationController
  
  def new
    @lost_cat = LostCat.new
  end
  
  # 投稿データの保存
  def create
    @lost_cat = LostCat.new(lost_cat_params)
    @lost_cat.customer_id = current_user.id
    @lost_cat.save
    redirect_to customers_lost_cats_path
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def lost_cat_params
    params.require(:lost_cat).permit(:lost_cat_title, :lost_cat_range, :lost_cat_introduction,:image)
  end
  
end

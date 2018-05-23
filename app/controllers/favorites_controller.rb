class FavoritesController < ApplicationController
  def index
    @favorite_writes = current_user.favorite_writes
  end

  def create  
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.write_id = params[:write_id]
    if favorite.save
      redirect_to favorites_path, notice: 'お気に入りに登録しました'
    else
      redirect_to favorites_path, notice: 'お気に入りに登録に失敗しました'
    end
  end
end

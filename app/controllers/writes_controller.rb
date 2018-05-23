class WritesController < ApplicationController
  PER = 5


  def index
    @writes = Write.page(params[:page]).per(PER).order('updated_at DESC')
    @favorite_writes = Write.find(Favorite.group(:write_id).order('count(write_id) DESC').limit(5).pluck(:write_id))
  end

  def new
    @write = Write.new
  end

  def create
    if current_user.writes.create(write_params)
      redirect_to writes_path, notice: "投稿に成功しました"
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def show
    @write = Write.find(params[:id])
    @write_new = Write.page(params[:page]).per(PER).order('updated_at DESC')
  end

private
 def write_params
   params.require(:write).permit(:image, :heading,:small_heading,:content,:title,:description)
 end

end

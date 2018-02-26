class WritesController < ApplicationController
  def index
    @writes = Write.all
  end

  def new
    @write = Write.new
  end

  def create
    if current_user.writes.create(write_params)
      redirect_to write_path, notice: "投稿に成功しました"
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

private
def write_params
  params.require(:write).permit(:image, :heading,:small_heading,:content)
end

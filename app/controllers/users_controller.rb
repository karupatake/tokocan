class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_writes=current_user.writes
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to sessions_new_url, notice: '登録が完了しました'
    else
      flash.now[:alert] = "登録が失敗しました"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_up_params)
      redirect_to user_path(id: params[:id])
    else
      flash.now[:alert] = "登録が失敗しました"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email,:account, :password, :password_confirmation, :contents)
  end

  def user_up_params
    params.require(:user).permit(:name, :account, :image, :contents)
  end


end

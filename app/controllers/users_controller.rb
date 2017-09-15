class UsersController < ApplicationController
  def index
    @users = User.all
    @username = params[:username]
  end

  def show
    @user = User.find_by(username: params[:id])
  end

  def crete
  end

  def edit
    @user = current_user
  end

  def destroy
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)

      # 更新に成功した場合を扱う。
    else
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:fullname, :username)
    end

end

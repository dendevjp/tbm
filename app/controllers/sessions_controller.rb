class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:uid])
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      remember user
      redirect_back_or user
    else
      # エラーメッセージを作成する
      flash.now[:danger] = 'ユーザIDあるいはパスワードが間違います。' # 本当は正しくない
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

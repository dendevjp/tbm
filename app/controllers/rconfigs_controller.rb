class RconfigsController < ApplicationController
  before_action :admin_user, only: [:index, :edit, :update]
  
  def index
    @rconfigs = Rconfig.search(params[:search])
  end

  def show
    @rconfig = Rconfig.find(params[:id])
  end

  def new
    @rconfig = Rconfig.new
  end

  def create
    @rconfig = Rconfig.new(rconfig_params)
    if @rconfig.save
      flash[:success] = "登録成功"
      redirect_to rconfigs_path
    else
      render 'new'
    end
  end

  def edit
    @rconfig = Rconfig.find(params[:id])
  end

  def update
    @rconfig = Rconfig.find(params[:id])
    if @rconfig.update_attributes(rconfig_params)
      flash[:success] = "保存成功しました。"
      redirect_to(rconfigs_path)
    else
      render 'edit'
    end
  end

  private

    def rconfig_params
      params.require(:rconfig).permit(:maincode, :subcode, :title, :description, :deleteflg)
    end

    # 管理者かどうか確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end

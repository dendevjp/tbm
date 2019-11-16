class SystemfailuresController < ApplicationController
  before_action :admin_user, only: [:index, :edit, :update]
  
  def index
    @systemfailures = Systemfailure.search(params[:search])
  end

  def show
    @systemfailure = Systemfailure.find(params[:id])
  end

  def new
    @systemfailure = Systemfailure.new
  end

  def create
    @systemfailure = Systemfailure.new(params[:id])
    if @systemfailure.save
      log_in @systemfailure
      flash[:success] = "登録成功"
      redirect_to @systemfailure
    else
      render 'new'
    end
  end

  def edit
    @systemfailure = Systemfailure.find(params[:id])
  end

  def update
    @systemfailure = Systemfailure.find(params[:id])
    if @systemfailure.update_attributes(systemfailure_params)
      flash[:success] = "保存成功しました。"
      redirect_to systemfailures_path
    else
      render 'edit'
    end
  end

  def destroy
    Systemfailure.find(params[:id]).destroy
    flash[:success] = "ユーザを削除しました。"
    redirect_to users_url
  end

  private

    # 管理者かどうか確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

    def systemfailure_params
      params.require(:systemfailure).permit(:time, 
:occur_date, 
:title, 
:department, 
:reporter, 
:update_deadline,
:confirm_deadline, 
:signal, 
:status, 
:hayakawa_comment, 
:chargecomment, 
:exchange_status, 

:hayakawa_show, 
:report_path, 
:followup, 
:evidence_update, 
:overall_check, 
:quality_status, 

:occurrence_year, 
:quality_status, 
:occurrence_month, 

:recurrence_Preventday)
    end

end

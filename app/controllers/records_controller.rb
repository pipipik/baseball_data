class RecordsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
    @records = Record.all.order("date DESC").limit(5)
    @users = User.all.order("number ASC")
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    if @record.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to root_path
  end

  private
  
  def record_params
  params.require(:record).permit(:date, :position_id, :result_id).merge(user_id: current_user.id)
  end
  
end

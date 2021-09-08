class MatsuesController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create]
  def index
    
  end

  def new
    @matsue = Matsue.new
    @matsues = Matsue.find_by(user_id: current_user.id)
    if @matsues.present?
      redirect_to matsue_path(current_user.id)
    end
  end

  def create
    @matsue = Matsue.new(matsue_params)
    if @matsue.valid?
      @matsue.save
      redirect_to matsue_path(current_user.id)
    else
      render :new
    end
  end

  def show
    @matsue = Matsue.find_by(user_id: current_user.id)
    @matsues = Matsue.includes(:user).order("created_at DESC")
  end

  def destroy
    @matsue = Matsue.find_by(user_id: current_user.id)
    @matsue.destroy
    redirect_to new_matsue_path
  end

  private
   def matsue_params
     params.require(:matsue).permit(:number_id, :stay_id, :season_id , :purpose_id ).merge(user_id: current_user.id)
   end
end

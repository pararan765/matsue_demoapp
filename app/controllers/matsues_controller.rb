class MatsuesController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create]
  def index
    
  end

  def new
    @matsue = Matsue.new
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
    @matsue = Matsue.find(params[:id])
    @matsues = Matsue.includes(:user).order("created_at DESC")
  end

  private
   def matsue_params
     params.require(:matsue).permit(:number_id, :stay_id, :season_id , :purpose_id ).merge(user_id: current_user.id)
   end
end

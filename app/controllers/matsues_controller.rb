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
      redirect_to root_path
    else
      render :new
    end
  end
end

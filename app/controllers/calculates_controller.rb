class CalculatesController < ApplicationController

  def index
    @calculates = Calclate.all
  end

  def new
    @calculate = Calclate.new
  end

  def create
    @calculate = Calclate.new(calculate_params)
    if @calculate.save
      redirect_to calculates_path
    else
      render :new
    end
  end


  private
  def calculate_params
    params.require(:calclate).permit(:weight, :activity_time)
  end
end

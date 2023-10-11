class CalculatesController < ApplicationController
  before_action :set_calculate, only: [:show, :edit, :update, :destroy]

  def index
    @calculates = Calclate.all
  end

  def new
    @calculate = Calclate.new
  end

  def create
    @calculate = Calclate.new(calculate_params)
    if @calculate.save
      redirect_to calculate_path(@calculate)
    else
      render :new
    end
  end

  def show
    
  end

  def edit
  end

  def update
    if @calculate.update(calculate_params)
      redirect_to calculates_path
    else
      render :edit
    end
  end

  def destroy
    @calculate.destroy
    redirect_to calculates_path
  end

  private

  def calculate_params
    params.require(:calclate).permit(:weight, :activity_time)
  end

  def set_calculate
    @calculate = Calclate.find(params[:id])
  end
end

class CalculatesController < ApplicationController
  before_action :set_calculate, only: [:show]

  def index
  end

  def new
    @calculate = Calclate.new
  end

  def create
    @calculate = Calclate.new(calculate_params)
    @water_amount = @calculate.calculate_water_amount
    @bottles = @calculate.calculate_water_bottles
      render :show
  end

  def show
  end

  #このクラスでしか使わないメソッドはprivate以下に記述する
  private

  def calculate_params
    params.require(:calclate).permit(:weight, :activity_time)
  end

  def set_calculate
    @calculate = Calclate.find(params[:id])
  end
end

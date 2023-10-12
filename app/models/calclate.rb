class Calclate < ApplicationRecord
  validates :weight, presence: true
  validates :activity_time, presence: true

  # 体重と運動時間から必要な水分量を計算する
  def calculate_water_amount
    water_amount = self.weight * self.activity_time * 5 * 0.8
    rounded_water_amount = water_amount.to_i
    return rounded_water_amount
  end
  
#必要な水分量から500mlのペットボトルの本数を計算する
  def calculate_water_bottles
    water_amount = calculate_water_amount
    bottles = (water_amount / 500.0).ceil
    return bottles
  end
end

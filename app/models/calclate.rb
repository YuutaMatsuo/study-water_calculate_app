class Calclate < ApplicationRecord
  validates :weight, presence: true
  validates :activity_time, presence: true

  def calculate_water_amount
    water_amount = self.weight * self.activity_time * 5 * 0.8
    rounded_water_amount = water_amount.to_i
    return rounded_water_amount
  end
end

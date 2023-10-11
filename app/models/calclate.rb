class Calclate < ApplicationRecord
  validates :weight, presence: true
  validates :activity_time, presence: true

  def water_calcul
    
  end
end

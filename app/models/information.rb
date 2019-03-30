class Information < ApplicationRecord
  validates :name, presence: true
  # validates :training_date, presence: true
  # validates :rest_heart_rate, presence: true
  validates :training_duration, presence: true
  validates_presence_of :rpe, inclusion: { in: %w(1..10) }, :message => "只能填寫1～10的數字"
  validates :rpe, numericality: { only_integer: true }
  validates :training_duration, numericality: { only_integer: true }



  def get_fatigue(information)
   information.fatigue = information.training_duration * information.rpe
  end



end

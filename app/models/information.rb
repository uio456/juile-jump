class Information < ApplicationRecord
  validates :name, presence: true
  validates :training_date, presence: true
  validates :rest_heart_rate, presence: true
  validates :training_duration, presence: true
  validates :rpe, presence: true
end

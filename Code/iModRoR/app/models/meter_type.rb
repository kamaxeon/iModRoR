class MeterType < ActiveRecord::Base
  validates :name, :unit, :lecture_id, presence: true
  validates :lecture_id, numericality: {
    only_integer: true,
    greater_than: 0,
    allow_blank: false }
  validates :alarm_id, numericality: {
    only_integer: true,
    allow_blank: false }
  has_many :meters
end

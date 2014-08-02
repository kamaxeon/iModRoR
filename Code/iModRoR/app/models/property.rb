class Property < ActiveRecord::Base
  validates :floor, :number, presence: true
  has_many :meters, dependent: :destroy
  has_many :lectures, through: :meters
  has_many :alarms,   through: :meters
end

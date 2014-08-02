class Lecture < ActiveRecord::Base
  validates :value, :meter, presence: true
  belongs_to :meter
end

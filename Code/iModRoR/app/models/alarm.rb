class Alarm < ActiveRecord::Base
  validates :meter, :value, presence: true
  belongs_to :meter
end

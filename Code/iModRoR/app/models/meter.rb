class Meter < ActiveRecord::Base
  validates :mbus_address, numericality : {
    only_integer: true,
    greater_than: 0,
    less_than: 256,
    allow_blank: false } , uniqueness: true
  belongs_to :propertry
  belongs_to :meter_type
  has_many :lectures, dependent: :destroy
  has_many :alarms,   dependent: :destroy
  after_initialize :default_values

  scope :sent_alerts, -> { where(sent_alert: true)}

  private
  def default_values
    self.sent_alert = true if sent_alert.nil?
  end
end

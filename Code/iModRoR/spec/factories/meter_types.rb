# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meter_type do
    name "MyString"
    description "MyText"
    unit "MyString"
    lecture_id 1
    alarm_id 1
  end
end

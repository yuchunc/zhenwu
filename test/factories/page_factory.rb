require 'factory_girl'

FactoryGirl.define do
  factory :page_en do
    name "somepage"
    language "en"
  end

  factory :page_zh do
    name "somepage"
    language "zh-TW"
  end
end

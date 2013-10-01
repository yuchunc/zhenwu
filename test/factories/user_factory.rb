require 'factory_girl'

FactoryGirl.define do

  factory :admin, class: User do
    email "admin@zhenwu.com"
    password "qwer1234"
    admin true
  end

end

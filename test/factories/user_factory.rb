require 'factory_girl'

FactoryGirl.define do

  factory :admin, class: User do
    email "admin@zhenwu.com"
    password "qwe123"
    admin true
  end

end

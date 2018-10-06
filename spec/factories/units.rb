FactoryBot.define do
  factory :unit do
    name { "MyString" }
    address { "MyString" }
    coordinates { "MyString" }
    price { 1.5 }
    status { "MyString" }
    active { false }
    broker { nil }
  end
end

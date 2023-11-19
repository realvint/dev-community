FactoryBot.define do
  factory :connection do
    user { nil }
    connected_user_id { 1 }
    status { "MyString" }
  end
end

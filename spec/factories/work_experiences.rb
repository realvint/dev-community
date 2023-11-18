FactoryBot.define do
  factory :work_experience do
    start_date { "2023-11-18" }
    end_date { "2023-11-18" }
    job_title { "MyString" }
    employment_type { "MyString" }
    location_type { "MyString" }
    location { "MyString" }
    currently_working_here { false }
    description { "MyText" }
    company { "MyString" }
    user { nil }
  end
end

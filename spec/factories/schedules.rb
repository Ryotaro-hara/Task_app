FactoryBot.define do
  factory :schedule do
    title { "旅行" }
    start_at { "2021-04-09" }
    end_at { "2021-04-09" }
    all_day { true }
    memo { "これはテストデータです" }
  end
end

FactoryBot.define do
  factory :todo do
    title { "Urgent work to do"}
    details { "please check email" }
    completed { false }
  end
end

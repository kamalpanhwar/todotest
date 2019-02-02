FactoryBot.define do
  factory :todo do
    sequence(:title) { |n| "My Tasks #{n}" }
    sequence(:details) { |n| "The details of the task number #{n}" }
    completed { false }
  end
end

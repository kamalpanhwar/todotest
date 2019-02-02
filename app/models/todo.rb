class Todo < ApplicationRecord
  validates :title, presence: true
  validates :details, presence: true
  scope :recent, -> { order(created_at: :desc) }
end

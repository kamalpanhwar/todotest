class Todo < ApplicationRecord
  validates :title, presence: true
  validates :details, presence: true
end

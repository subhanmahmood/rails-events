class Task < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :event, required: false
  validates :title, presence: true
end
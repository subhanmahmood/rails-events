class Event < ApplicationRecord
  has_many :tasks
  belongs_to :user
  validates :title, presence: true
  validates :date, presence: true
end

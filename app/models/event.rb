class Event < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :messages, dependent: :destroy
  belongs_to :user
  validates :title, presence: true
  validates :date, presence: true
end

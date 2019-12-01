class Task < ApplicationRecord
  belongs_to :user
  belongs_to :event
  after_initialize :init

  def init
    self.status ||= false
  end
end

class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, presence: true

  def completion_percentage
    return 0 if tasks.empty?
    (tasks.completed.count.to_f / tasks.count * 100).round
  end
end 
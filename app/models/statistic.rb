class Statistic < ApplicationRecord
  scope :first_statistic, -> { where(id: 1).first_or_create! }

  def change_statistic(status, choice1, choice2)
    if choice1 == choice2
      self.num_not_change += 1
      if status == :won
        self.num_not_change_won += 1
      end
    else
      self.num_change += 1
      if status == :won
        self.num_change_won += 1
      end
    end
  end
end

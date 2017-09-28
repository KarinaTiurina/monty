module ApplicationHelper
  def calc_percent(num, num_won)
    (num_won.to_f/num.to_f*100).round(2)
  end
end

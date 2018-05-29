class BonusDrink
  BONUS_THRESHOLD = 3
  class << self
    def total_count_for(amount)
      return amount if amount < BONUS_THRESHOLD
      amount + bonus(amount)
    end

    private
    def bonus(base_amount, acc = 0)
      return acc if base_amount < BONUS_THRESHOLD
      acc += 1
      bonus(base_amount - BONUS_THRESHOLD + 1, acc)
    end
  end
end

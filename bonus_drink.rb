class BonusDrink
  BONUS_THRESHOLD = 3
  BONUS_DRINK = 1
  class << self
    def total_count_for(amount)
      amount + bonus(amount)
    end

    private
    def bonus(base_amount, acc = 0)
      return acc if base_amount < BONUS_THRESHOLD
      acc += BONUS_DRINK
      bonus(base_amount - BONUS_THRESHOLD + BONUS_DRINK, acc)
    end
  end
end

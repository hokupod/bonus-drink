class BonusDrink
  BONUS_THRESHOLD = 3
  class << self
    def total_count_for(amount)
      return amount if amount < BONUS_THRESHOLD
      amount + bonus(amount)
    end

    private
    def bonus(amount)
      (amount % BONUS_THRESHOLD + amount / BONUS_THRESHOLD).to_i
    end
  end
end

require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe 'no bonus' do
    (0..2).each do |num|
      context "amount is #{num}" do
        specify { expect(BonusDrink.total_count_for(num)).to eq num }
      end
    end
  end
  describe 'get bonus' do
    context 'amount is 3' do
      specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
    end
    context 'amount is 11' do
      specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
    end
    context 'amount is 100' do
      specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
    end
  end
end

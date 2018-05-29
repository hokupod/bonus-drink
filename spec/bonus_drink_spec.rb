require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe 'no bonus' do
    context 'case of 0' do
      specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
    end
    (1..2).each do |num|
      context "case of #{num}" do
        specify { expect(BonusDrink.total_count_for(num)).to eq num }
      end
    end
  end
end

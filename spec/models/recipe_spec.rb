require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:recipe) { create(:recipe) }

  describe 'validations' do
    it { should validate_uniqueness_of(:customer_id) }
    it { should validate_uniqueness_of(:number) }
    #it { should validate_inclusion_of(:age).in_array(['adult', 'baby'])}
    
  end

  describe 'associations' do
    it { should belong_to(:user).with_foreign_key('customer_id') }
  end 
end

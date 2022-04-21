require 'rails_helper'

RSpec.describe User, type: :model do 
  let(:user) { create(:user) }

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) } 
    it { should validate_length_of(:name).is_at_least(2) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe 'associations' do
    it { should have_many(:recipes).with_foreign_key('customer_id') }
    it { should have_many(:orders).with_foreign_key('order_id') }
  end  

  context 'is doctor?' do
    it { expect(user.is_doctor?).to be false }
  end

end




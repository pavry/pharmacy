require 'rails_helper'

RSpec.describe Order, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:totalPrice) }
    it { should validate_presence_of(:state) }
  end
end

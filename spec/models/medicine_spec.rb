require 'rails_helper'

RSpec.describe Medicine, type: :model do
  #let!(:medicine) { create(:medicine) }

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_length_of(:description).is_at_most(3000) }
  end
end

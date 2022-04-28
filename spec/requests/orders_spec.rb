require 'rails_helper'

RSpec.describe "Orders", type: :request do
  let(:order) { create(:order) }

  describe 'GET #show' do
      before { get :show }

      context 'required output per page' do 
          it 'render to show template' do 
              is_expected.to render_template :show    
          end

          it 'instance var projects include only projects' do
              expect(assigns(:orders)).to match_array(medicines)
          end
      end
            
  end

  describe 'GET #create' do
      before { get :create }

      it "creates a new Order" do
        expect {
          post orders_url, params: { order: valid_attributes }
        }.to change(Order, :count).by(1)
      end
        
      it 'checks that a order can be created' do
          expect(@order).to be_valid 
      end                                 

        
  end
    
end
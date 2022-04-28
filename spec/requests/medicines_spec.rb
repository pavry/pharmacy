require 'rails_helper'

RSpec.describe "Medicines", type: :request do
  let(:medicines) { create_list :medicine, 5}

  describe 'GET #show' do
    before { get :show }

    context 'required output per page' do 
      it 'render to show template' do 
        is_expected.to render_template :show  
      end

      it 'instance var projects include only projects' do
        expect(assigns(:medicines)).to match_array(medicines)
      end
    end
      
  end
  
end
require 'rails_helper'

RSpec.describe ApplicationCable::Connection, type: :channel do
  include ActionCable::TestHelper
  let!(:user) { create(:user_mike) }
  let(:micropost) { user.microposts.create(content: 'Lorem ipsum') }
  context 'when user is authenticated' do
    let!(:user) { create(:user_mike) }

    describe '#connect' do
      it 'accepts connection' do
        cookies.encrypted[:user_id] = user.id
        expect { connect }.to_not raise_error
      end
    end
  end

  context 'when user is not authenticated' do
    it 'should reject connection' do
      expect { connect '/cable' }.to have_rejected_connection
    end
  end
end

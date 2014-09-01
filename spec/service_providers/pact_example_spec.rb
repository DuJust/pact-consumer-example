require 'pact_example'
require_relative 'pact_helper'

module PactExample
  describe APP, :pact => true do
    before do
      APP.base_uri 'localhost:1234'
    end

    describe 'get_model' do
      before do
        provider_service
          .given('model exists')
          .upon_receiving('a request for model')
          .with(method: :get, path: '/models/du')
          .will_respond_with(
            status: 200,
            headers: {'Content-Type' => 'application/json'},
            body: {name: 'du'}
          )
      end

      it 'returns a model' do
        expect(APP.get_model('du')).to eq(MyModel.new('du'))
      end
    end
  end
end
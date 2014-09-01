require_relative '../spec_helper'
require 'pact/consumer/rspec'

Pact.service_consumer 'Pact Example Service Consumer' do
  has_pact_with 'Pact Example Service Provider' do
    mock_service :provider_service do
      port 1234
    end
  end
end
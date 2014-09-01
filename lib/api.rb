require 'grape'
require_relative 'my_model'

module PactExample
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json

    resource :models do
      desc 'Return a model.'
      params do
        requires :name, type: String, desc: 'Model Name.'
      end
      route_param :name do
        get do
          PactExample::MyModel.new(params[:name])
        end
      end

    end
  end
end
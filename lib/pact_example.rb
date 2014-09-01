require_relative 'my_model'
require 'httparty'

module PactExample
  class APP
    include HTTParty
    base_uri 'http://my-service'

    def self.get_model(name)
      MyModel.new(get("/models/#{name}")['name'])
    end

  end
end
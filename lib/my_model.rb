require 'json'

module PactExample
  class MyModel
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def ==(other)
      other.is_a?(MyModel) && other.name == name
    end

  end
end
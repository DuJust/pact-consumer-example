require 'spec_helper'
require 'my_model'

module PactExample
  describe MyModel do
    describe '#==' do
      subject { MyModel.new('new_one') }
      it { should eq(MyModel.new('new_one')) }
    end
  end
end
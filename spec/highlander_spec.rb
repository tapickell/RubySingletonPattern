require 'highlander'

describe Highlander do
  describe 'instance' do
    it 'returns the only instance of itself' do
      Highlander.instance.object_id.should == Highlander.instance.object_id
    end
  end

  describe 'new' do
    it 'throws an error if called on a singleton class' do
      expect { Highlander.new }.to raise_error(NoMethodError, 'There can only be one!')
    end
  end
end

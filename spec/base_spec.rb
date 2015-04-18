require 'spec_helper'

describe Varify::Base do

  it 'can varify' do
    foo = Varify::Base.varify(:foo,{foo:'bar'})
    expect(foo).to eq('bar')
  end
end
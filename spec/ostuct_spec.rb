require 'spec_helper'

describe OpenStruct do
  it 'can varify' do
    value = nil
    ostruct = OpenStruct.new(foo:'bar')
    expect {
      value = ostruct.varify(:foo)
      }.to_not raise_error

    expect(value).to eq('bar')
  end
end
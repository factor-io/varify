require 'spec_helper'

describe Hash do
  it 'can varify' do
    value = nil
    hash = {foo:'bar'}
    expect {
      value = hash.varify(:foo)
      }.to_not raise_error

    expect(value).to eq('bar')
  end
end
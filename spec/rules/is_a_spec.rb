require 'spec_helper'

describe Varify::Rules::IsARule do

  it 'can pass' do
    v = Varify::Rules::IsARule.new(:key,'Key','foo',String)
    expect(v.valid?).to eq(true)
  end

  it 'can fail' do
    v = Varify::Rules::IsARule.new(:key,'Key','foo',Hash)
    expect(v.valid?).to eq(false)
  end

  it 'can set error message' do
    v = Varify::Rules::IsARule.new(:key,'Key','foo',Hash)
    expect(v.error_message).to eq('Key (:key) must be a Hash')
  end
end
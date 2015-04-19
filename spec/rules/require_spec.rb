require 'spec_helper'

describe Varify::Rules::RequiredRule do

  it 'can pass' do
    v = Varify::Rules::RequiredRule.new(:key,'Key','foo',true)
    expect(v.valid?).to eq(true)
  end

  it 'can ignore if false' do
    v = Varify::Rules::RequiredRule.new(:key,'Key',nil,false)
    expect(v.valid?).to eq(true)
  end

  it 'can fail' do
    v = Varify::Rules::RequiredRule.new(:key,'Key',nil,true)
    expect(v.valid?).to eq(false)
  end
end
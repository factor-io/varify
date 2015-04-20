require 'spec_helper'

describe Varify::Rules::BetweenRule do

  it 'can pass' do
    v = Varify::Rules::BetweenRule.new(:key,'Key',3,[1,4])
    expect(v.valid?).to eq(true)
  end

  it 'can fail' do
    v = Varify::Rules::BetweenRule.new(:key,'Key',5,[1,3])
    expect(v.valid?).to eq(false)
  end

  it 'can set error message' do
    v = Varify::Rules::BetweenRule.new(:key,'Key',5,[1,3])
    expect(v.error_message).to eq("Key (:key) must be between '1' and '3'")
  end
end
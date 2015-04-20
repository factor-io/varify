require 'spec_helper'

describe Varify::Rules::OneOfRule do

  it 'can pass' do
    v = Varify::Rules::OneOfRule.new(:key,'Key','foo',['foo','bar','baz'])
    expect(v.valid?).to eq(true)
  end

  it 'can fail' do
    v = Varify::Rules::OneOfRule.new(:key,'Key','foo',['not','one','of','these'])
    expect(v.valid?).to eq(false)
  end

  it 'raises an error of 0 options provided' do
    v = Varify::Rules::OneOfRule.new(:key,'Key','foo',[])
    expect(v.error_message).to eq("Key (:key) can't be valid because no valid options were provided")
  end

  it 'can set error message with 1 options' do
    v = Varify::Rules::OneOfRule.new(:key,'Key','foo',['foo'])
    expect(v.error_message).to eq("Key (:key) must be 'foo'")
  end

  it 'can set error message with 2 options' do
    v = Varify::Rules::OneOfRule.new(:key,'Key','foo',['foo','bar'])
    expect(v.error_message).to eq("Key (:key) must be 'foo' or 'bar'")
  end

  it 'can set error message with 3 options' do
    v = Varify::Rules::OneOfRule.new(:key,'Key','foo',['foo','bar','baz'])
    expect(v.error_message).to eq("Key (:key) must be 'foo', 'bar' or 'baz'")
  end
end
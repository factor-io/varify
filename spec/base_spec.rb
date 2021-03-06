require 'spec_helper'

describe Varify::Base do

  it 'can extract the value' do
    foo = Varify::Base.varify(:foo,{foo:'bar'})
    expect(foo).to eq('bar')
  end

  it 'raises on unrecognized rule' do
    expect {
      Varify::Base.varify(:foo,{foo:'bar'},{bad_rule:''})  
    }.to raise_error "Rule ':bad_rule' is not defined"
  end

  it 'gets a message on failed verification' do
    logs = []
    Varify::Base.callback { |error| logs << error }

    Varify::Base.varify(:foo,{},{required:true})  

    expect(logs).to contain_exactly({message:"Foo (:foo) is required",key: :foo, rule: :required})
  end

  it 'can handle optional null values' do
    value = Varify::Base.varify(:foo,{},{required:false})
    expect(value).to be_nil
  end
end
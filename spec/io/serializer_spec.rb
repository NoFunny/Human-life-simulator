require 'rspec'
require_relative '../../lib/basic/human'
require_relative '../../lib/basic/action'
require_relative '../../lib/io/serialize'

describe 'Serializer' do
  let(:human) { Human.new }
  let(:action) { Action.new }
  let(:json) { '{"name":"John Doe","health":90,"mana":60,"happiness":1,"tired":40,"money":0,"alive":true}' }

  it 'should convert obj to string' do
    expect(Serialize.new.serialize_human(human).class).to eq(String)
  end

  context 'after going to bar' do
    it 'should convert obj to valid json' do
      action.go_to_bar(human)
      expect(Serialize.new.serialize_human(human)).to eq(json)
    end
  end
end

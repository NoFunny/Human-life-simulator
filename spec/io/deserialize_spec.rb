require 'rspec'
require_relative '../../lib/basic/human'
require_relative '../../lib/basic/action'
require_relative '../../lib/io/deserialize'

describe 'Deserialize' do
  let(:json) { '{"name":"John Doe","health":90,"mana":60,"happiness":1,"tired":40,"money":0,"alive":true}' }
  let(:human) { Human.new }

  it 'should convert json to obj' do
    Action.new.go_to_bar(human)
    result = deserialize_human(json)

    expect(result.name).to eq(human.name)
    expect(result.health).to eq(human.health)
    expect(result.mana).to eq(human.mana)
    expect(result.happiness).to eq(human.happiness)
    expect(result.tired).to eq(human.tired)
    expect(result.money).to eq(human.money)
    expect(result.alive).to eq(human.alive)
  end
end

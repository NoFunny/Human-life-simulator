require 'rspec'
require_relative '../../lib/basic/cause'
require_relative '../../lib/basic/human'

describe 'Cause' do
  let(:cause) { Cause.new }
  let(:human) { Human.new }

  it '.less_health' do
    human.health = 0
    expect(cause.less_health(human)).to eq("#{human.name.chomp} не подлечил здоровье и скончался.\n")
  end

  it '.very_tired' do
    human.tired = 100
    expect(cause.very_tired(human)).to eq("#{human.name.chomp} не жалел себя и устал досмерти.\n")
  end

  it '.a_lot_of_mana' do
    human.mana = 100
    expect(cause.a_lot_of_mana(human)).to eq("#{human.name.chomp} перепил и скончался.\n")
  end

  it '.less_happiness' do
    human.happiness = -10
    expect(cause.less_happiness(human)).to eq("#{human.name.chomp} скончался от непреодалимой грусти.\n")
  end

  it '.in_arrears' do
    human.money = -50
    expect(cause.in_arrears(human)).to eq("#{human.name.chomp} забили за долги.\n")
  end

  it '.get_cause_of_dead' do
    human.money = -50
    expect(cause.get_cause_of_dead(human)).to eq("#{human.name.chomp} забили за долги.\n")
  end
end

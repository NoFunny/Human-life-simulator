require 'rspec'
require_relative '../../lib/basic/cause'
require_relative '../../lib/basic/human'

describe 'Cause' do
  let(:cause) { Cause.new }
  let(:human) { Human.new }

  describe '.less_health' do
    subject do
      human.health = 0
      cause.less_health(human)
    end

    it { is_expected.to eq("#{human.name.chomp} не подлечил здоровье и скончался.\n") }
  end

  describe '.very_tired' do
    subject do
      human.tired = 100
      cause.very_tired(human)
    end

    it { is_expected.to eq("#{human.name.chomp} не жалел себя и устал досмерти.\n") }
  end

  describe '.a_lot_of_mana' do
    subject do
      human.mana = 100
      cause.a_lot_of_mana(human)
    end

    it { is_expected.to eq("#{human.name.chomp} перепил и скончался.\n") }
  end

  describe '.less_happiness' do
    subject do
      human.happiness = -10
      cause.less_happiness(human)
    end

    it { is_expected.to eq("#{human.name.chomp} скончался от непреодалимой грусти.\n") }
  end

  describe '.in_arrears' do
    subject do
      human.money = -50
      cause.in_arrears(human)
    end

    it { is_expected.to eq("#{human.name.chomp} забили за долги.\n") }
  end

  describe '.get_cause_of_dead' do
    subject do
      human.money = -50
      cause.get_cause_of_dead(human)
    end

    it { is_expected.to eq("#{human.name.chomp} забили за долги.\n") }
  end
end

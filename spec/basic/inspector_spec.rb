require 'rspec'
require_relative '../../lib/basic/inspector'
require_relative '../../lib/basic/human'

describe 'Inspector' do
  let(:inspector) { Inspector.new(Human.new('Pasha')) }

  describe '.life_condition' do
    context 'when health = 0' do
      it 'should be dead' do
        inspector.human.health = 0
        inspector.life_condition
        expect(inspector.human.alive).to be false
      end
    end

    context 'when tired = 100' do
      it 'should be dead' do
        inspector.human.tired = 100
        inspector.life_condition
        expect(inspector.human.alive).to be false
      end
    end

    context 'when mana = 100' do
      it 'should be dead' do
        inspector.human.mana = 100
        inspector.life_condition
        expect(inspector.human.alive).to be false
      end
    end

    context 'when happiness = -10' do
      it 'should be dead' do
        inspector.human.happiness = -10
        inspector.life_condition
        expect(inspector.human.alive).to be false
      end
    end
  end

  describe '.boundaries_health' do
    context 'human.health < 0' do
      it 'human.health should be = 0' do
        inspector.human.health = -83_295_835
        inspector.boundaries_health
        expect(inspector.human.health).to eq(0)
      end
    end

    context 'human.health > 100' do
      it 'human.health should be = 100' do
        inspector.human.health = 919_153_925
        inspector.boundaries_health
        expect(inspector.human.health).to eq(100)
      end
    end
  end

  describe '.boundaries_mana' do
    context 'human.mana < 0' do
      it 'human.mana should be = 0' do
        inspector.human.mana = -83_295_835
        inspector.boundaries_mana
        expect(inspector.human.mana).to eq(0)
      end
    end

    context 'human.mana > 100' do
      it 'human.mana should be = 100' do
        inspector.human.mana = 919_153_925
        inspector.boundaries_mana
        expect(inspector.human.mana).to eq(100)
      end
    end
  end

  describe '.boundaries_happiness' do
    context 'human.happiness < -10' do
      it 'human.happiness should be = -10' do
        inspector.human.happiness = -83_295_835
        inspector.boundaries_happiness
        expect(inspector.human.happiness).to eq(-10)
      end
    end

    context 'human.happiness > 10' do
      it 'human.happiness should be = 10' do
        inspector.human.happiness = 919_153_925
        inspector.boundaries_happiness
        expect(inspector.human.happiness).to eq(10)
      end
    end
  end

  describe '.boundaries_tired' do
    context 'human.tired < 0' do
      it 'human.tired should be = 0' do
        inspector.human.tired = -83_295_835
        inspector.boundaries_tired
        expect(inspector.human.tired).to eq(0)
      end
    end

    context 'human.tired > 100' do
      it 'human.tired should be = 100' do
        inspector.human.tired = 919_153_925
        inspector.boundaries_tired
        expect(inspector.human.tired).to eq(100)
      end
    end
  end

  describe '.boundaries_money' do
    context 'human.money < -50' do
      it 'human.money should be = -50' do
        inspector.human.money = -83_295_835
        inspector.boundaries_money
        expect(inspector.human.money).to eq(-50)
      end
    end
  end
end

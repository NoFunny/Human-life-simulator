require 'rspec'
require_relative '../../lib/basic/inspector'
require_relative '../../lib/basic/human'

describe Inspector do
  let(:check) { Inspector.new(Human.new('Pasha')) }

  describe '.life_condition' do
    context 'when health = 0' do
      it 'should be dead' do
        check.human.health = 0
        check.life_condition
        expect(check.human.alive).to be false
      end
    end

    context 'when tired = 100' do
      it 'should be dead' do
        check.human.tired = 100
        check.life_condition
        expect(check.human.alive).to be false
      end
    end

    context 'when mana = 100' do
      it 'should be dead' do
        check.human.mana = 100
        check.life_condition
        expect(check.human.alive).to be false
      end
    end

    context 'when happiness = -10' do
      it 'should be dead' do
        check.human.happiness = -10
        check.life_condition
        expect(check.human.alive).to be false
      end
    end
  end

  describe '.boundaries_health' do
    context 'human.health < 0' do
      it 'human.health should be = 0' do
        check.human.health = -83_295_835
        check.boundaries_health
        expect(check.human.health).to eq(0)
      end
    end

    context 'human.health > 100' do
      it 'human.health should be = 100' do
        check.human.health = 919_153_925
        check.boundaries_health
        expect(check.human.health).to eq(100)
      end
    end
  end

  describe '.boundaries_mana' do
    context 'human.mana < 0' do
      it 'human.mana should be = 0' do
        check.human.mana = -83_295_835
        check.boundaries_mana
        expect(check.human.mana).to eq(0)
      end
    end

    context 'human.mana > 100' do
      it 'human.mana should be = 100' do
        check.human.mana = 919_153_925
        check.boundaries_mana
        expect(check.human.mana).to eq(100)
      end
    end
  end

  describe '.boundaries_happiness' do
    context 'human.happiness < -10' do
      it 'human.happiness should be = -10' do
        check.human.happiness = -83_295_835
        check.boundaries_happiness
        expect(check.human.happiness).to eq(-10)
      end
    end

    context 'human.happiness > 10' do
      it 'human.happiness should be = 10' do
        check.human.happiness = 919_153_925
        check.boundaries_happiness
        expect(check.human.happiness).to eq(10)
      end
    end
  end

  describe '.boundaries_tired' do
    context 'human.tired < 0' do
      it 'human.tired should be = 0' do
        check.human.tired = -83_295_835
        check.boundaries_tired
        expect(check.human.tired).to eq(0)
      end
    end

    context 'human.tired > 100' do
      it 'human.tired should be = 100' do
        check.human.tired = 919_153_925
        check.boundaries_tired
        expect(check.human.tired).to eq(100)
      end
    end
  end

  describe '.boundaries_money' do
    context 'human.money < -50' do
      it 'human.money should be = -50' do
        check.human.money = -83_295_835
        check.boundaries_money
        expect(check.human.money).to eq(-50)
      end
    end
  end

  describe '.dead?' do
    context 'when human is alive' do
      it 'should be not dead' do
        check.human.alive = true
        expect(check.alive?).to be true
      end
    end

    context 'when human is not alive' do
      it 'should be dead' do
        check.human.alive = false
        expect(check.alive?).to be false
      end
    end
  end
end

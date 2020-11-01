require 'rspec'
require_relative '../../../lib/basic/human'
require_relative '../../../lib/basic/action'

describe 'ActionMethods' do
  let(:human) { Human.new('Pasha') }
  let(:action) { Action.new }

  it '.go_to_work' do
    action.go_to_work(human)
    expect(human.happiness).to eq(-5)
    expect(human.mana).to eq(-30)
    expect(human.money).to eq(200)
    expect(human.tired).to eq(70)
  end

  it '.contemplate_nature' do
    action.contemplate_nature(human)
    expect(human.happiness).to eq(1)
    expect(human.mana).to eq(-10)
    expect(human.tired).to eq(10)
  end

  it '.drink_wine_and_watch_tv_series' do
    action.drink_wine_and_watch_series(human)
    expect(human.happiness).to eq(-1)
    expect(human.mana).to eq(30)
    expect(human.tired).to eq(10)
    expect(human.health).to eq(95)
    expect(human.money).to eq(80)
  end

  it '.go_to_the_bar' do
    action.go_to_bar(human)
    expect(human.happiness).to eq(1)
    expect(human.mana).to eq(60)
    expect(human.tired).to eq(40)
    expect(human.health).to eq(90)
    expect(human.money).to eq(0)
  end

  it '.drink_with_marginalized_people' do
    action.drink_with_marginalized_people(human)
    expect(human.happiness).to eq(5)
    expect(human.health).to eq(20)
    expect(human.mana).to eq(90)
    expect(human.tired).to eq(80)
    expect(human.money).to eq(-50)
  end

  context 'when 40 <= mana >= 70' do
    it '.sing_in_the_subway' do
      action.sing_in_subway(human)
      expect(human.happiness).to eq(1)
      expect(human.mana).to eq(10)
      expect(human.money).to eq(110)
      expect(human.tired).to eq(20)
    end
  end

  context 'when 40 > mana < 70' do
    it '.sing_in_the_subway' do
      human.mana = 50
      action.sing_in_subway(human)
      expect(human.happiness).to eq(1)
      expect(human.mana).to eq(60)
      expect(human.money).to eq(160)
      expect(human.tired).to eq(20)
    end
  end

  context 'when mana < 30' do
    it '.sleep' do
      action.sleep(human)
      expect(human.health).to eq(190)
      expect(human.happiness).to eq(0)
      expect(human.mana).to eq(-50)
      expect(human.tired).to eq(-70)
    end
  end

  context 'when mana > 70' do
    it '.sleep' do
      human.mana = 100
      action.sleep(human)
      expect(human.health).to eq(100)
      expect(human.happiness).to eq(-3)
      expect(human.mana).to eq(50)
      expect(human.tired).to eq(-70)
    end
  end

  context 'when 30 > mana < 70' do
    it '.sleep' do
      human.mana = 50
      action.sleep(human)
      expect(human.health).to eq(100)
      expect(human.happiness).to eq(0)
      expect(human.mana).to eq(0)
      expect(human.tired).to eq(-70)
    end
  end
end

require_relative 'cause'

class Inspector
  attr_accessor :human

  def initialize(human = Human.new)
    @human = human
  end

  def run_inspect
    boundaries_health
    boundaries_mana
    boundaries_happiness
    boundaries_tired
    boundaries_money
    life_condition
    puts Cause.new.get_cause_of_dead(@human) unless @human.alive
  end

  def life_condition
    @human.alive = false if @human.health.zero?
    @human.alive = false if @human.tired == 100
    @human.alive = false if @human.mana == 100
    @human.alive = false if @human.happiness == -10
    @human.alive = false if @human.money == -50
  end

  def boundaries_health
    @human.health = 0 if @human.health.negative?
    @human.health = 100 if @human.health > 100
  end

  def boundaries_mana
    @human.mana = 0 if @human.mana.negative?
    @human.mana = 100 if @human.mana > 100
  end

  def boundaries_happiness
    @human.happiness = -10 if @human.happiness < -10
    @human.happiness = 10 if @human.happiness > 10
  end

  def boundaries_tired
    @human.tired = 0 if @human.tired.negative?
    @human.tired = 100 if @human.tired > 100
  end

  def boundaries_money
    @human.money = -50 if @human.money < -50
  end
end

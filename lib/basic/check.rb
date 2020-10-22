class Check
  def life_condition(human)
    human.alive = false if human.health.zero?
    human.alive = false if human.tired == 100
    human.alive = false if human.mana == 100
    human.alive = false if human.happiness == -10
  end

  def dead?(human)
    human.alive
  end

  def boundaries_health(human)
    human.health = 0 if human.health.negative?
    human.health = 100 if human.health > 100
  end

  def boundaries_mana(human)
    human.mana = 0 if human.mana.negative?
    human.mana = 100 if human.mana > 100
  end

  def boundaries_happiness(human)
    human.happiness = -10 if human.happiness < -10
    human.happiness = 10 if human.happiness > 10
  end

  def boundaries_tired(human)
    human.tired = 0 if human.tired.negative?
    human.tired = 100 if human.tired > 100
  end

  def boundaries_money(human)
    human.money = 0 if human.money.negative?
  end
end

class Actions
  def go_to_work(human)
    human.happiness = human.happiness - 5
    human.mana = human.mana - 30
    human.money = human.money + 100
    human.tired = human.tired - 5
  end

  def contemplate_nature(human)
    human.happiness = human.happiness + 1
    human.mana = human.mana - 10
    human.tired = human.tired + 10
  end

  def drink_wine_and_watch_tv_series(human)
    human.happiness = human.happiness - 1
    human.mana = human.mana + 30
    human.tired = human.tired + 10
    human.health = human.health - 5
    human.money = human.money - 10
  end

  def  go_to_the_bar(human)
    human.happiness = human.happiness + 1
    human.mana = human.mana + 60
    human.tired = human.tired + 40
    human.health = human.health - 10
    human.money = human.money - 100
  end

  def drink_with_marginalized_people(human)
    human.happiness = human.happiness + 5
    human.health = human.health - 80
    human.mana = human.mana + 90
    human.tired = human.tired + 80
    human.money = human.money - 150
  end

  def sing_in_the_subway(human)
    human.happiness = human.happiness + 1
    human.mana = human.mana + 10
    human.money = human.money + 10
    human.tired = human.tired + 20
  end

  def sleep(human)
    human.health = human.health + 90 if human.mana < 30
    human.happiness = human.happiness - 3 if human.mana > 70
    human.mana = human.mana - 50
    human.tired = human.tired - 70
  end
end

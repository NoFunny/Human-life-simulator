class Cause
  def less_health(human)
    human.health.zero?
  end

  def very_tired(human)
    human.tired == 100
  end

  def a_lot_of_mana(human)
    human.mana == 100
  end

  def less_happiness(human)
    human.happiness == -10
  end

  def in_arrears(human)
    human.money == -50
  end

  def get_cause_of_dead(human)
    print("#{human.name.chomp} не подлечил здоровье и скончался\n") if less_health(human)
    print("#{human.name.chomp} не жалел себя и устал досмерти\n") if very_tired(human)
    print("#{human.name.chomp} перепил и скончался\n") if a_lot_of_mana(human)
    print("#{human.name.chomp} скончался от непреодалимой грусти") if less_happiness(human)
    print("#{human.name.chomp} забили за долги") if in_arrears(human)
  end
end
